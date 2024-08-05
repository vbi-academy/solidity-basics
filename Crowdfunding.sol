// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {PriceConverter} from "./PriceConverter.sol";

contract Crowdfunding {
    using PriceConverter for uint256;

    error NoAvailableAmount();

    uint256 public constant MINIMUM_USD = 5e18; // 5 USD in Wei
    address public immutable i_owner;

    mapping(address => bool) public isFunders;
    mapping(address => uint256) public funderToAmount;
    address[] public funders;

    event Funded(address indexed funder, uint256 value);
    event Withdrawn(uint256 value);

    receive() external payable {
        fund();
    }

    fallback() external payable {
        fund();
    }

    constructor() {
        i_owner = msg.sender;
    }

    modifier onlyOwner() {
        if (i_owner != msg.sender) {
            revert NoAvailableAmount();
        }
        _;
    }

    function fund() public payable {
        require(msg.value.getConversionRate() >= MINIMUM_USD, "no available amount");

        funderToAmount[msg.sender] += msg.value;
        bool isFunded = isFunders[msg.sender];

        if (!isFunded) {
            funders.push(msg.sender);
            isFunders[msg.sender] = true;
        }

        emit Funded(msg.sender, msg.value);
    }

    function withdraw() public onlyOwner {
        (bool sent,) = payable(i_owner).call{value: address(this).balance}("");
        require(sent, "Failed to send Ether");

        emit Withdrawn(address(this).balance);
    }

    // Tìm ra có bao nhiêu người đã đóng góp
    function getFundersLength() public view returns (uint256) {
        return funders.length;
    }
}
