<div align="center">

<h1>Solidity Basics Course</h1>

<strong>Học cách phát triển Smart Contract dựa trên ngôn ngữ Solidity</strong>

<p align="center">
<a href="https://www.youtube.com/@VBIAcademy">
        <img src=".github/images/vbi-powered-badge.png" width="145" alt=""/></a>
</p>
Chào mừng bạn đến với repository của khoá học Solidity Basics. <br/> Khoá học này được phát triển bởi <a href="https://www.youtube.com/@VBIAcademy">VBI Academy</a> và <a href="https://www.youtube.com/channel/UC0QESw8LTPb841qcABmOsvA">Terran Crypt</a>.

</div>

---
> Nội dung trong khoá học này đã được sự cho phép chọn lọc và dịch thuật từ các khoá học được phát triển và giảng dạy bởi [Cyfrin Updraft](https://updraft.cyfrin.io/) và [Patrick Collins](https://www.youtube.com/@PatrickAlphaC).
---

## Mở đầu

Trong khoá học này, chúng ta sẽ đi qua những thứ cơ bản nhất của việc phát triển smart contract với ngôn ngữ Solidity. 

Tuy nhiên, chúng ta cần có những kiến thức nền tảng, trước khi chúng ta đi vào phát triển smart contract.

- Kiến thức về Blockchain cơ bản:

Nếu bạn đã có kiến thức về Blockchain cơ bản, hãy bỏ qua phần này và đi đến ngay phần bên dưới. Còn nếu bạn chưa biết, bạn cần phải xem qua khoá học Blockchain Basics của VBI đã phát triển để có kiến thức nền tảng trước khi chúng ta đi sâu vào khoá học nhé.

<a href="https://www.youtube.com/playlist?list=PLxBQKTwGKNkN_YSwg84ARGRIXbNiVLI6y" style="text-decoration: underline;">Blockchain Basics Course</a>

Trong repository này, chúng ta sẽ có phần [Discussions (Thảo luận)](https://github.com/openedu101/solidity-basics/discussions) trong phần này, bạn có thể đặt bất kỳ câu hỏi nào liên quan đến khoá học tại đây, tụi mình sẽ cố gắng để giải đáp bất kỳ câu hỏi nào của bạn nhé.

Ngoài ra, tụi mình cũng có group Discord hỗ trợ học viên của VBI Academy:

<a href="https://discord.gg/htjprg2Puy" style="text-decoration: underline;">Solidity Developer Vietnam</a>

## Section 1: Remix Simple Storage

Code: https://github.com/openedu101/solidity-basics/tree/01-remix-simple-storage

- [Remix](https://remix.ethereum.org/)
- [Solidity Documentation](https://soliditylang.org/)

### Bố cục Solidty Source File

- SPDX License List: https://spdx.dev/learn/handling-license-info/

Tại sao phải có giấy phép? Một cách đơn giản thì giấy phép giúp cho code của bạn được chứng nhận là mã nguồn mở. Vì code trong các smart contract trên blockchain là public, ai cũng có thể xem code. 

Bằng cách thêm giấy phép vào mã nguồn của bạn, bạn xác nhận rằng mã đó là mã nguồn mở, cho phép người khác sử dụng, sửa đổi và phân phối lại theo các điều khoản mà bạn đã chọn. Điều này không chỉ giúp bảo vệ quyền lợi của bạn mà còn thúc đẩy sự phát triển cộng đồng, bởi vì người khác có thể đóng góp và cải thiện mã nguồn của bạn.

- Pragma Version: xác định phiên bản giúp cố định mã nguồn của contract ở một hoặc vài phiên bản Solidity nhất định. 

Bởi vì Solidity liên tục cập nhật với các tính năng mới, cải tiến hiệu suất và sửa lỗi. Xác định version cho contract giúp đảm bão mã được biên dịch và chạy chính xác, không gặp phải các vấn đề không tương thích của các phiên bản cập nhật mới hơn. 

### Những kiểu dữ liệu (type) cơ bản của Solidity

- `uint256`: số nguyên dương, có giá trị từ 0 đổ lên. Mặc định là số 0.
- `int256`: số nguyên, có thể có giá trị âm, dương, hoặc bằng 0. Mặc định là số 0.
- `bool`: đúng hoặc sai, `true` hoặc `false`. Mặc định là `false`.
- `string`: chuỗi ký tự, độ dài của chuỗi không được cố định và có thể thay đổi. Thường dùng để lưu văn bản. Mặc định là chuỗi rỗng.
- `bytes`: dùng để lưu dữ liệu nhị phân, không phải là văn bản. `bytes` là kiểu dữ liệu động, độ dài có thể thay đổi, còn `bytes32` là kiểu dữ liệu tĩnh, có độ dài cố định. Mặc định là rỗng.
- `address`: địa chỉ address, dùng để xác định người dùng, các hợp đồng trong mạng lưới blockchain. Mặc định là `address(0)` `0x0000000000000000000000000000000000000000`

### Solidity Functions (hàm trong Solidity)

- Functions
- Visibility: `public`, `external`, `internal`, `private`.
  - `public` có thể gọi function trong hợp đồng ở đâu cũng được, không có giới hạn.
  - `external` chỉ có thể gọi từ bên ngoài vào trong hợp đồng.
  - `internal` có thể gọi từ bên trong hợp đồng và từ các hợp đồng được kế thừa.
  - `private` chỉ có thể gọi bên trong hợp đồng mà không thể gọi từ hợp đồng con được kế thừa nào.
- Deploy một contract (smart contract có một địa chỉ address cũng giống như wallet của chúng ta).
- `view` & `pure` functions.

### Array & Struct
- **Array**
- **Struct**
- Dynamic & fixed size arrays (mảng có độ dài linh hoạt và mảng có độ dài cố định)
- `push` function

### Memory, Storage & Calldata

6 vị trí dùng để lưu trữ và truy cập dữ liệu trong EVM:

- **Stack**: Đây là nơi các giá trị được lưu trữ tạm thời trong quá trình thực thi các hàm. EVM sử dụng một stack LIFO (Last In, First Out), có thể chứa các số nguyên (integer) và địa chỉ (address). Mọi phép toán trong EVM đều được thực hiện trên stack.
- **Memory**: Đây là không gian lưu trữ tạm thời được sử dụng để thực hiện các phép toán phức tạp như chuỗi (string) hoặc mảng động (dynamic array). Memory trong EVM là không gian dữ liệu có thể truy cập và được phân bổ trong quá trình thực thi, xoá đi sau khi thực thi hoàn tất.
- **Storage**: Đây là vị trí lưu trữ dữ liệu có tính khả dụng lâu dài nhất trong EVM. Storage được sử dụng để lưu trữ các giá trị dữ liệu trên blockchain Ethereum. Các biến được lưu trữ trong storage có thể được truy cập và cập nhật trong nhiều lần gọi hàm khác nhau và tồn tại cho đến khi hợp đồng bị xoá hoặc thay đổi bởi hợp đồng khác.
- **Calldata**: Đây là không gian lưu trữ dữ liệu chỉ đọc được từ các hàm ngoài hợp đồng. Calldata chứa các tham số và dữ liệu được truyền tới hợp đồng thông minh từ các giao dịch. Dữ liệu trong calldata không thể thay đổi bởi hợp đồng thông minh và chỉ có thể đọc.
- **Code**: Đây là mã bytecode của một hợp đồng thông minh Ethereum, tức là mã máy ảo Ethereum (EVM bytecode) mà EVM sẽ thực thi khi một hợp đồng được triển khai lên blockchain. Code này được lưu trữ trong blockchain và xác định hành vi và chức năng của hợp đồng thông minh.
- **Logs**: Đây là một công cụ để ghi lại và truy cập các sự kiện (events) xảy ra trong một hợp đồng thông minh. Logs được lưu trữ như là một phần của bản ghi giao dịch trong blockchain. Chúng là các dữ liệu không thể thay đổi và có thể được truy cập bởi các ứng dụng và dịch vụ khác để theo dõi và phân tích các sự kiện xảy ra trong hợp đồng thông minh. 

Có 6 loại nhưng memory, storage & calldata là 3 loại mà chúng ta tiếp xúc nhiều nhất khi chúng ta làm việc với smart contract.

### Mappings 

`mapping` là một loại cấu trúc dữ liệu được sử dụng để lưu trữ cặp key-value, cho phép bạn ánh xạ một giá trị (value) tới một key (khóa) duy nhất và không thứ tự.

### Deploy contract

- Mainnet & Testnet
- Faucet
- Kết nối với Metamask
- Tương tác với contract đã được deploy
---
> #### "Không có bước đi nào là quá nhỏ. Mỗi bước đều là một phần của hành trình lớn."
> 🎉 Đăng thành quả trong phần này của bạn tại group [VBI Academy](https://www.facebook.com/groups/vbivietnamdevtech)
---

## Section 2: Contract Factory

Code: https://github.com/openedu101/solidity-basics/tree/02-storage-factory

- [Factory Patterns](https://betterprogramming.pub/learn-solidity-the-factory-pattern-75d11c3e7d29)

Phần này đơn giản là tạo một hợp đồng trong một hợp đồng khác.

Factory (nhà máy) contract dùng để tạo và quản lý các hợp đồng khác.

### Import code

Code: https://github.com/openedu101/solidity-basics/tree/02-solidity-import

### Tương tác với contract khác
Để tương tác với contract khác bạn luôn cần ABI + Address
- [ABI](https://docs.soliditylang.org/en/latest/abi-spec.html)
  
### Inheritance & Overrides (kế thừa và ghi đè)

Hợp đồng có thể kế thừa từ nhiều hợp đồng cha.

Khi một hàm được gọi và tồn tại nhiều lần trong các hợp đồng cha khác nhau, các hợp đồng cha sẽ được tìm kiếm từ phải sang trái và bên phải ngoài cùng sẽ được kế thừa theo thứ tự tìm kiếm sâu nhất (depth-first). 


```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Hợp đồng kế thừa các hợp đồng khác bằng cách sử dụng từ khóa 'is'.
contract B is A {
    // Ghi đè A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // Ghi đè A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

contract D is B, C {
    // D.foo() sẽ trả về hàm foo của hợp đồng "C"
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() sẽ trả về hàm foo của hợp đồng "B"
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Thay đổi vị trí của A và B sẽ gây ra lỗi compilation
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}
```

Thứ tự kế thừa phải được sắp xếp từ "cơ bản nhất" (most base-like) đến "phức tạp nhất" (most derived), nếu không sẽ gây ra lỗi biên dịch.

## Section 3: Decentralized Crowdfunding Contract

Code: https://github.com/openedu101/solidity-basics/tree/03-decentralized-crowdfunding

Phần này chúng ta sẽ xây dựng một smart contract để gây quỹ từ cộng đồng theo cách phi tập trung.

### Gửi ETH thông qua một function
- [Ethereum Unit Converter](https://etherscan.io/unitconverter)

- Các trường trong một transaction trên Ethereum: 
  - `from`
  - `to`
  - `gasLimit`
  - `maxFeePerGas`
  - `maxPriorityFeePerGas`
  - `nonce`
  - `value`

Chi tiết: https://ethereum.org/en/developers/docs/transactions/
  
- [v, r, s trong eth_getTransactionByHash nghĩa là gì?](https://ethereum.stackexchange.com/questions/15766/what-does-v-r-s-in-eth-gettransactionbyhash-mean)
- Payable: `function` và `address` được khai báo `payable` có thể nhận ether vào hợp đồng.
- Solidty Global Keywords: https://docs.soliditylang.org/en/latest/cheatsheet.html#global-variables
  
### Require & Revert
- **Require**
    
`require()` trong Solidity là một cách để đặt điều kiện trước khi thực hiện một hành động. Nó hoạt động tương tự như việc yêu cầu đăng nhập trước khi truy cập tài khoản trên các trang web. 

Ví dụ: Khi Suyash muốn gửi 5 Ethereum cho Aditya, chúng ta có thể sử dụng `require()` để kiểm tra xem Suyash có đủ số dư không trước khi thực hiện giao dịch.

Về mặt kỹ thuật, `require()` trả về giá trị boolean (đúng hoặc sai). Nếu điều kiện đúng, code sẽ tiếp tục thực thi. Nếu sai, nó sẽ dừng lại và báo lỗi. `require()` nhận hai tham số: điều kiện cần kiểm tra và thông báo lỗi (tùy chọn).

Cú pháp:
```js
require(condition);
```

Cú pháp với thông báo lỗi:
```js
require(condition, "Thông báo lỗi");
```

Nếu điều kiện trong `require()` đúng, code sẽ tiếp tục thực thi.

Nếu điều kiện sai, giao dịch sẽ bị hủy bỏ, các thay đổi trạng thái sẽ được hoàn tác, và gas còn lại sẽ được hoàn trả.

Thông báo lỗi là tùy chọn, nhưng rất hữu ích để giải thích lý do tại sao giao dịch thất bại.

- **Revert**

`revert()` được sử dụng để xử lý lỗi và hủy bỏ giao dịch trong smart contract. Khi được gọi, `revert()` sẽ hủy bỏ tất cả các thay đổi trạng thái trong giao dịch hiện tại.

`revert()` thường được sử dụng trong các tình huống tương tự như `require()`, nhưng khi cần xử lý logic phức tạp hơn.

Nó hữu ích trong các trường hợp có nhiều điều kiện lồng nhau (if/else) phức tạp.

Cú pháp:
```js
revert('Something bad happened');
```

Hoặc có thể sử dụng trong câu lệnh điều kiện:
```js
if (condition) {
    revert('Error message');
}
```

- So sánh `revert()` và `required()`:
  - `require()` thường được ưa chuộng hơn cho các kiểm tra đơn giản.
  - `revert()` linh hoạt hơn cho các logic phức tạp.

Mặc dù `revert()` cho phép xử lý logic phức tạp, nhưng việc có quá nhiều logic phức tạp trong smart contract được coi là một dấu hiệu của code không tối ưu (code smell).

### Lấy dữ liệu giá thực tế bằng Chainlink Oracle

- Chainlink Documentation: https://docs.chain.link/
- Chainlink Github: https://github.com/smartcontractkit/chainlink

- **Solidity Math**:
  - Nhân trước khi chia
  - Không có dấu phẩy động trong Solidity.

### Library

`library` tương tự như `contract`, nhưng bạn không thể khai báo bất kỳ biến trạng thái nào và không thể gửi ether.

`library` có thể `import` vào `contract` nếu tất cả các chức năng thư viện đều là nội bộ. Nếu không, `library` phải được deploy và liên kết trước khi `contract` được `deploy`.

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

library Math {
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
        // else z = 0 (default value)
    }
}

contract TestMath {
    function testSquareRoot(uint256 x) public pure returns (uint256) {
        return Math.sqrt(x);
    }
}

```

### Overflow & Underflow

Trong Solidity, overflow và underflow là hai vấn đề liên quan đến việc xử lý số nguyên. 

- **Overflow**:
  - Xảy ra khi một số vượt quá giá trị tối đa có thể lưu trữ.
  - Ví dụ: `uint8` chỉ lưu từ 0-255. Nếu cộng 1 vào 255, kết quả sẽ quay về 0.
- **Underflow**: 
  - Xảy ra khi một số giảm xuống dưới giá trị tối thiểu có thể lưu trữ.
  - Ví dụ: `uint8` giảm 1 từ 0 sẽ quay về 255.

Các phiên bản Solidity từ 0.8.0 trở lên tự động kiểm tra và revert giao dịch khi xảy ra overflow/underflow. Với phiên bản cũ hơn, cần sử dụng thư viện SafeMath hoặc kiểm tra thủ công.

- [checked vs unchecked](https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic)

### Vòng lặp

Solidity hỗ trợ các vòng lặp `for`, `while`, và `do while`.

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Loop {
    function loop() public {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                Chuyển sang lần lặp tiếp theo
                continue;
            }
            if (i == 5) {
                // Thoát khỏi vòng lặp
                break;
            }
        }

        // while loop
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
```

### Reset array 

```js
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

contract DeleteExample {
    uint[] dataArray;

    function f() public {
        delete dataArray;

        // hoặc dùng
        dataArray = new uint[](0);
    }
}
```

### Transfer, Send, and Call

Bạn có thể gửi Ether đến các hợp đồng khác bằng 3 functions:

- `transfer` (2300 gas, không ném về lỗi)
- `send` (2300 gas, trả về `bool`)
- `call` (có thể set gas hoặc không, trả về `bool`)

```js
contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        // Không nên dùng function này
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Function này cũng không nên dùng
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Function này nên được dùng
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
```

### Constructor

Hàm `constructor()` là một hàm tuỳ chọn, được khởi tạo khi tạo `contract`

```js
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// Base contract Y
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// Base contract C
contract C is X, Y {
    
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}
```

### Modifiers

- Solidity Operators with Example: https://www.geeksforgeeks.org/solidity-operators/
- `modifier` là function có thể được gọi trước hoặc sau `function` được gọi.

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract FunctionModifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function changeOwner(address _newOwner)
        public
        onlyOwner
    {
        owner = _newOwner;
    }
}
```

### Immutable & Constant

- `immutable` nên đùng để ghi dữ liệu vào trong lần khởi tạo contract.
- `constant` nên dùng để ghi dữ liệu trực tiếp vào trong code.

Dùng `immutable` và `constant` để tối ưu gas cho contract.

### Custom Errors

- [Custom Errors in Solidity](https://soliditylang.org/blog/2021/04/21/custom-errors/)

### Testnet Demo

### Receive & Fallback

`contract` nếu muốn nhận Ether phải có ít nhất một trong các `function` dưới đây:

- `receive()` external payable
- `fallback()` external payable
  
`receive()` sẽ được gọi nếu `msg.data` bị bỏ trống, còn không `fallback()` sẽ được gọi.

```js
contract ReceiveEther {
    /*
    Function nào sẽ được gọi, fallback() or receive()?

           gửi Ether
               |
         msg.data có trống không?
              /      \
            có      không
            /          \
receive() có tồn tại?  fallback()
         /   \
        có   không
        /      \
    receive()   fallback()
    */

    receive() external payable {}
    
    fallback() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
```

- `this` là để chỉ contract này.