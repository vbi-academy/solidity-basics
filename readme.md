<div align="center">

<h1>Solidity Basics Course</h1>

<strong>Học cách phát triển Smart Contract dựa trên ngôn ngữ Solidity</strong>

<p align="center">
<a href="https://www.youtube.com/@VBIAcademy">
        <img src=".github/images/vbi-powered-badge.png" width="145" alt=""/></a>
</p>
Chào mừng bạn đến với repository của khoá học Solidity Basics. <br/> Khoá học này được phát triển bởi <a href="https://www.youtube.com/@VBIAcademy">VBI Academy</a> và <a href="https://www.terrancrypt.com/">Terran Crypt</a>.

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

## Mục lục

<details> 
    <summary><a href="#section-1-remix-simple-storage">Section 1: Remix Simple Storage</a></summary>
    <ol>
        <li><a href="#bố-cục-solidty-source-file">Bố cục Solidity Source File</a></li>
        <li><a href="#những-kiểu-dữ-liệu-type-cơ-bản-của-solidity">Những kiểu dữ liệu (type) cơ bản của Solidity</a></li>
        <li><a href="#solidity-functions-hàm-trong-solidity">Solidity Functions (hàm trong Solidity)</a></li>
        <li><a href="#array">Array</a></li>
        <li><a href="#struct">Struct</a></li>
        <li><a href="#memory-storage--calldata">Memory, Storage & Calldata</a></li>
        <li><a href="#mappings">Mappings</a></li>
        <li><a href="#deploy-contract">Deploy contract</a></li>
    </ol>
</details>

<details>
    <summary><a href="#section-2-contract-factory">Section 2: Contract Factory</a></summary>
    <ol>
        <li><a href="#import-code">Import code</a></li>
        <li><a href="#tương-tác-với-contract-khác">Tương tác với contract khác</a></li>
        <li><a href="#inheritance--overrides-kế-thừa-và-ghi-đè">Inheritance & Overrides (kế thừa và ghi đè)</a></li>
    </ol>
</details>

<details>
    <summary><a href="#section-3-decentralized-crowdfunding-contract">Section 3: Decentralized Crowdfunding Contract</a></summary>
    <ol>
        <li><a href="#payable">Payable</a></li>
        <li><a href="#ether--wei">Ether & Wei</a></li>
        <li><a href="#validations-xác-thực">Validations (Xác thực)</a></li>
        <li><a href="#require--revert">Require & Revert</a></li>
        <li><a href="#constant">Constant</a></li>
        <li><a href="#immutable">Immutable</a></li>
        <li><a href="#constructor">Constructor</a></li>
        <li><a href="#gửi-eth-thông-qua-một-function">Gửi ETH thông qua một function</a></li>
        <li><a href="#receive--fallback">Receive & Fallback</a></li>
        <li><a href="#transfer-send-and-call">Transfer, Send, and Call</a></li>
        <li><a href="#modifier">Modifier</a></li>
    </ol>
</details>

<details>
    <summary><a href="#section-4-decentralized-crowdfunding-contract-with-chainlink-oracle">Section 4: Decentralized Crowdfunding Contract (with Chainlink Oracle)</a></summary>
    <ol>
        <li><a href="#lấy-dữ-liệu-giá-thực-tế-bằng-chainlink-oracle">Lấy dữ liệu giá thực tế bằng Chainlink Oracle</a></li>
        <li><a href="#overflow--underflow">Overflow & Underflow</a></li>
        <li><a href="#vòng-lặp">Vòng lặp</a></li>
        <li><a href="#reset-array">Reset array</a></li>
        <li><a href="#library">Library</a></li>
        <li><a href="#events">Events</a></li>
    </ol>
</details>

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

### Array

```js
contract Array {
    // Một số cách để khởi tạo một array
    uint256[] public arr; // Array rỗng
    uint256[] public arr2 = [1, 2, 3]; 
    // Array fixed size, độ dài cố định, các phần tử mặc định giá trị 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // Solidity có thể return về hết một cả array bất kể độ dài
    // Nên tránh returns theo kiểu này, vì array có thể rất lớn
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        // Thêm vào array, độ dài của array sẽ tăng lên một
        arr.push(i);
    }

    function pop() public {
        // Xoá phần tử cuối cùng của array
        // Độ dài của array sẽ giảm đi 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // Delete sẽ không xoá phần tử trong array tại vị trí index
        // Nó sẽ đưa giá trị của phần tử về giá trị mặc định
        // Ở đây giá trị mặc định của unit256 là 0
        delete arr[index];
    }

    function examples() external {
        // Tạo một biến array trong phân vùng memory để tính toán dữ liệu
        // Sẽ bị xoá đi khi function hoàn tất
        // Chỉ có thể khởi tạo kiểu này với fixed size array
        uint256[] memory a = new uint256[](5);
    }
}
```

### Struct

- Bạn có thể định nghĩa một kiểu cho riêng mình bằng keyword `struct`.
- Nếu bạn muốn nhóm các dữ liệu có liên quan lại với nhau thì struct sinh ra để giúp bạn làm điều đó.
- Có thể khai báo bên ngoài một `contract` và `import` vào contract khác.

```js
contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // Một array với kiểu `Todo`
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 cách để khởi tạo một struct
        // - gọi nó như một function
        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // khởi tạo một struct rỗng và update đó
        Todo memory todo;
        todo.text = _text;
        // todo.completed khởi tạo sẽ bằng giá trị mặc định của kiểu dữ liệu
        // ở đây = false

        todos.push(todo);
    }

    // update text
    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
```

### Memory, Storage & Calldata

6 vị trí dùng để lưu trữ và truy cập dữ liệu trong EVM:

- **Stack**: Đây là nơi các giá trị được lưu trữ tạm thời trong quá trình thực thi các hàm. EVM sử dụng một stack LIFO (Last In, First Out), có thể chứa các số nguyên (integer) và địa chỉ (address). Mọi phép toán trong EVM đều được thực hiện trên stack.
- **Memory**: Đây là không gian lưu trữ tạm thời được sử dụng để thực hiện các phép toán phức tạp như chuỗi (string) hoặc mảng động (dynamic array). Memory trong EVM là không gian dữ liệu có thể truy cập và được phân bổ trong quá trình thực thi, xoá đi sau khi thực thi hoàn tất.
- **Storage**: Đây là vị trí lưu trữ dữ liệu có tính khả dụng lâu dài nhất trong EVM. Storage được sử dụng để lưu trữ các giá trị dữ liệu trên blockchain Ethereum. Các biến được lưu trữ trong storage có thể được truy cập và cập nhật trong nhiều lần gọi hàm khác nhau và tồn tại cho đến khi hợp đồng bị xoá hoặc thay đổi bởi hợp đồng khác.
- **Calldata**: Đây là không gian lưu trữ dữ liệu chỉ đọc được từ các hàm ngoài hợp đồng. Calldata chứa các tham số và dữ liệu được truyền tới hợp đồng thông minh từ các giao dịch. Dữ liệu trong calldata không thể thay đổi bởi hợp đồng thông minh và chỉ có thể đọc.
- **Code**: Đây là mã bytecode của một hợp đồng thông minh Ethereum, tức là mã máy ảo Ethereum (EVM bytecode) mà EVM sẽ thực thi khi một hợp đồng được triển khai lên blockchain. Code này được lưu trữ trong blockchain và xác định hành vi và chức năng của hợp đồng thông minh.
- **Logs**: Đây là một công cụ để ghi lại và truy cập các sự kiện (events) xảy ra trong một hợp đồng thông minh. Logs được lưu trữ như là một phần của bản ghi giao dịch trong blockchain. Chúng là các dữ liệu không thể thay đổi và có thể được truy cập bởi các ứng dụng và dịch vụ khác để theo dõi và phân tích các sự kiện xảy ra trong hợp đồng thông minh. 

Có 6 loại nhưng memory, storage & calldata là 3 loại mà chúng ta tiếp xúc nhiều nhất khi chúng ta làm việc với smart contract.

Tìm hiểu thêm:
- [The Ethereum Virtual Machine - Mastering Ethereum Book](https://cypherpunks-core.github.io/ethereumbook/13evm.html)
- [ETHEREUM VIRTUAL MACHINE (EVM) - Ethereum Docs](https://ethereum.org/en/developers/docs/evm/)

### Mappings 

`mapping` là một loại cấu trúc dữ liệu được sử dụng để lưu trữ cặp key-value, cho phép bạn ánh xạ một giá trị (value) tới một key (khóa) duy nhất và không thứ tự.

### Deploy contract

- Mainnet & Testnet
- Faucet
  - [Chainlink Faucet](https://faucets.chain.link/)
- Kết nối với Metamask
- Tương tác với contract đã được deploy
---
> #### "Không có bước đi nào là quá nhỏ. Mỗi bước đều là một phần của hành trình lớn." - Jenny Craig

🎉 Đăng thành quả trong phần này của bạn tại: 
- [VBI Academy - Facebook](https://www.facebook.com/groups/vbivietnamdevtech)
- [Solidity Developer Vietnam - Discord](https://discord.gg/BzQ9kanp)
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

---
> #### "Thành công không đến từ những gì bạn làm thỉnh thoảng, mà đến từ những gì bạn làm mỗi ngày." - Robin Sharma

🎉 Đăng thành quả trong phần này của bạn tại: 
- [VBI Academy - Facebook](https://www.facebook.com/groups/vbivietnamdevtech)
- [Solidity Developer Vietnam - Discord](https://discord.gg/BzQ9kanp)

---

## Section 3: Decentralized Crowdfunding Contract

Code: https://github.com/openedu101/solidity-basics/tree/03-decentralized-crowdfunding

Phần này chúng ta sẽ xây dựng một smart contract để gây quỹ từ cộng đồng theo cách phi tập trung.

Có một số thay đổi trong phần này, code trên là code demo, mình đã dùng rồi nên mình sẽ để im như vậy nha. Finish code mọi người có thể xem trong section 4.

### Payable

```js
    // Khai báo rằng địa chỉ address được lưu trữ 
    // có thể gửi Ether thông qua các hàm send hoặc call
    address payable public owner;

    // Payable constructor có thể nhận Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function dùng để nhận Ether vào trong contract.
    // Gọi function này với Ether được gửi kèm thông qua msg.value
    // Số dư Ether của contract này sẽ tự động được cập nhật
    function deposit() public payable {}

    // Cũng gọi function này với Ether được gửi kèm thông qua msg.value
    // Nhưng sẽ không gọi được, 
    // function sẽ bị revert bởi vì đây không phải một payable function
    function notPayable() public {}

    // Function dùng để rút Ether từ contract này ra ngoài
    function withdraw() public {
        // lấy số dư Ether của contract này
        uint256 amount = address(this).balance;

        // gửi hết Ether tới cho biến owner
        (bool success,) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    // Function này sẽ gửi Ether của contract 
    // đến cho một địa chỉ address 
    // thông quan input/arguments address và số lượng muốn gửi được truyền vào
    function transfer(address payable _to, uint256 _amount) public {
        // biến _to được truyền vào cần phải khai báo như một biến payable
        (bool success,) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
```

### Ether & Wei

Giống như việc một $1 = 100 cent. Một `ether` bằng với 10<sup>18</sup> `wei`.

```js
    uint256 public oneWei = 1 wei;
    // 1 wei bằng với 1
    bool public isOneWei = (oneWei == 1);

    uint256 public oneGwei = 1 gwei;
    // 1 gwei bằng với 10^9 wei
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;
    // 1 ether bằng với 10^18 wei
    bool public isOneEther = (oneEther == 1e18);
```

### Validations (Xác thực)

Có 3 functions kiểm tra, xác thực để chúng ta làm việc. Tuỳ theo điều kiện đúng hoặc sai bạn thiết lập thì khi nó được trigger (kích hoạt), thì function sẽ bị revert - dừng mọi hoạt động của function và trạng thái trước khi function này được chạy sẽ được dữ nguyên.

- `require` để xác thực dữ liệu và điều kiện đầu vào.


```js
    function testRequire(uint256 _i) public pure {
        // Require nên được dùng để xác thực các điều kiện:
        // - inputs (dữ liệu nhập vào function)
        // - điều kiện trước khi thực thi
        // - giá trị  nhận về khi call một function
        require(_i > 10, "Input must be greater than 10");
    }
```

- `revert` cũng sẽ tương tự như require nhưng sử dụng điều kiện bằng những expressions (biểu thức) ví dụ như `if` `else` để kích hoạt. 
    - [Expressions and Control Structures](https://docs.soliditylang.org/en/v0.8.26/control-structures.html)

```js
    function testRevert(uint256 _i) public pure {
        // Revert hữu dụng trong trường hợp kiểm tra các điều kiện phức tạp
        // This code này giống hệt kiểm tra require bên trên
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }
```

```js
    // custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
```
Sử dụng custom error thì sẽ tiết kiệm gas hơn.

- `assert` (ít dùng) để kiểm tra mã không bao giờ được sai. Nếu sai điều kiện bên trong thì sẽ revert.


```js
    uint256 public num;

    function testAssert() public view {
        // Assert chỉ nên dùng để kiểm tra các lỗi bên trong contract,
        // hoặc kiểm tra tính bất biến

        // Ở bên dưới chúng ta kiểm tra rằng biến num luôn bằng 0
        assert(num == 0);
    }
``` 

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

### Constant

Một biết được đặt là `constant` sẽ không thể được cập nhật. Sử dụng constant giúp tiết kiệm gas.

```js
    // hãy viết hoa những biến constant
    address public constant MY_ADDRESS = 0x7f4A3Fe909524CEa8C91fFdEf717C797581AE36D;
    uint256 public constant MY_UINT = 123;
```

### Immutable
Biến được xác định là `immutable` cũng sẽ giống như `constant`, không thể được cập nhật. Tuy nhiên có thể được xác định trong hàm khởi tạo `constuctor()` và sẽ không được thay đổi sau đó.

```js
    // hãy đặt một ký tự i_ trước tên biến để xác định đó là biến immutable
    address public immutable i_myAddress;
    uint256 public immutable i_myUint;

    constructor(uint256 _myUint) {
        i_myAddress = msg.sender;
        i_myUint = _myUint;
    }
```

### Constructor

Hàm `constructor()` là một hàm tuỳ chọn, được khởi tạo khi tạo `contract`

```js
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

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

### Modifier

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

## Section 4: Decentralized Crowdfunding Contract (with Chainlink Oracle)

Code: https://github.com/openedu101/solidity-basics/tree/04-decentralized-crowdfunding-final-code

Trong phần này, video mình có quên nói về Solidity Math (những hàm toán học trong Solidity), bạn có thể tìm hiểu thêm bên dưới.

Ngoài ra còn có những vấn đề khác như Overflow và Underflow. Tuy nhiên từ Solidity phiên bản 0.8 trở lên đã khắc phục vấn đề này. Để tìm hiểu sâu hơn mình sẽ giải thích trong khoá Advanced nhé.

### Lấy dữ liệu giá thực tế bằng Chainlink Oracle

- Chainlink Documentation: https://docs.chain.link/
- Chainlink Github: https://github.com/smartcontractkit/chainlink

- **Solidity Math**:
  - Nhân trước khi chia
  - Không có dấu phẩy động trong Solidity.

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

### Events

`event` cho phép ghi nhật ký (log) vào blockchain. Event có thể dùng để cho một số trường hợp:

- Lắng nghe event để cập nhật trạng thái của giao dịch hoặc hợp đồng trên giao diện người dùng.
- Sử dụng nhưng một hình thức lưu trữ dữ liệu giá rẻ, lấy ra nhanh chóng.

```js
    // Một event có thể có tối đa 3 biến được đặt là `indexed`
    // `indexed` được coi như là lập chỉ mục, giúp lọc các bản ghi nhanh hơn
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
```

---
> #### "Chặng đường dài hàng nghìn dặm bắt đầu từ một bước chân nhỏ." - Lão Tử

🎉 Đăng thành quả trong phần này của bạn tại: 
- [VBI Academy - Facebook](https://www.facebook.com/groups/vbivietnamdevtech)
- [Solidity Developer Vietnam - Discord](https://discord.gg/BzQ9kanp)
---