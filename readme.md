<div align="center">

<h1>Solidity Basics Course</h1>

<strong>Học cách phát triển Smart Contract dựa trên ngôn ngữ Solidity</strong>

<p align="center">
<a href="https://www.youtube.com/@VBIAcademy">
        <img src=".github/images/vbi-powered-badge.png" width="145" alt=""/></a>
</p>
Chào mừng bạn đến với repository của khoá học Solidity Basics. Khoá học này được phát triển bởi <a href="https://www.youtube.com/@VBIAcademy">VBI Academy</a> và <a href="https://www.youtube.com/channel/UC0QESw8LTPb841qcABmOsvA">Terran Crypt</a>.

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

Trong repository này, chúng ta sẽ có phần Discussions (Thảo luận) trong phần này, bạn có thể đặt bất kỳ câu hỏi nào liên quan đến khoá học tại đây, tụi mình sẽ cố gắng để giải đáp bất kỳ câu hỏi nào của bạn nhé.

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