// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// import Foo.sol từ thư mục hiện tại
import "./Foo.sol";

// import {symbol1 as alias, symbol2} from "filename";
import {Unauthorized, add as func, Point} from "./Foo.sol";

contract Import {
    // khởi tạo Foo.sol
    Foo public foo = new Foo();

    // biến addressToPoints sử dụng struct Point đã được import
    mapping(address => Point) public addressToPoints;

    // thêm giá trị cho biến point
    function setPoints(address setter, uint256 _x, uint256 _y) public {
        if (setter != msg.sender) {
            revert Unauthorized(msg.sender);
        }
        addressToPoints[setter] = Point({x: _x, y: _y});
    }

    // Test Foo.sol bằng cách lấy tên của function này
    function getFooName() public view returns (string memory) {
        return foo.name();
    }

    // gọi hàm `add` đã được import và đặt bí danh thành `func`
    function getAddNumber(address setter) public view returns (uint256) {
        Point memory points = addressToPoints[setter];
        return func(points.x, points.y);
    }
}
