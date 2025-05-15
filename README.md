# Max Wellness Website

Website chuyên nghiệp giới thiệu dịch vụ y tế cao cấp cho Max Wellness Việt Nam.

## Giới thiệu

Max Wellness là đối tác y tế từ Mỹ chuyên cung cấp các liệu pháp chăm sóc sức khỏe chuyên sâu như NAD+, Glutathione, Coenzyme Q10 và các dòng truyền IV cao cấp. Website này được thiết kế để giới thiệu thương hiệu, sản phẩm và liệu trình đến khách hàng Việt Nam.

## Cấu trúc thư mục

```
/
├── assets/
│   ├── css/
│   │   └── style.css
│   ├── js/
│   │   └── main.js
│   ├── images/
│   └── fonts/
├── pages/
│   ├── san-pham/
│   │   ├── nad-plus.html
│   │   ├── glutathione.html
│   │   └── coenzyme-q10.html
│   ├── lieu-trinh/
│   │   ├── nad-plus.html
│   │   ├── detox-ruou-tao-nang-luong.html
│   │   └── trang-da-glutathione.html
│   └── thu-vien-kien-thuc/
│       ├── nad-la-gi.html
│       ├── vitamin-c-lieu-cao.html
│       └── exosome-te-bao-goc.html
├── components/
│   ├── header.html
│   ├── footer.html
│   ├── contact-form.html
│   └── testimonials.html
├── index.html
├── gioi-thieu.html
├── lien-he.html
└── tu-van.html
```

## Công nghệ sử dụng

- HTML5, CSS3, JavaScript
- Bootstrap 5
- Font Awesome (icons)
- Google Fonts
- AOS (Animation On Scroll)

## Cài đặt và chạy dự án

### Yêu cầu

- Trình duyệt web hiện đại
- Live Server hoặc bất kỳ web server nào (nếu phát triển/chạy trên local)

### Cách chạy

#### Phương pháp 1: Dùng Live Server (VS Code)

1. Cài đặt extension Live Server trong VS Code
2. Mở dự án trong VS Code
3. Click chuột phải vào file `index.html` và chọn "Open with Live Server"

#### Phương pháp 2: Dùng HTTP Server

1. Cài đặt Node.js
2. Cài đặt http-server: `npm install -g http-server`
3. Di chuyển vào thư mục dự án bằng terminal
4. Chạy lệnh: `http-server`
5. Mở trình duyệt và truy cập: `http://localhost:8080`

## Lưu ý khi phát triển

### Thêm trang mới

1. Tạo file HTML mới trong thư mục tương ứng
2. Sao chép cấu trúc cơ bản từ trang có sẵn
3. Cập nhật nội dung và liên kết trong menu điều hướng

### Thêm hình ảnh

1. Đặt hình ảnh vào thư mục `assets/images`
2. Cần tối ưu hình ảnh trước khi đưa vào dự án để tăng tốc độ tải trang

### Cập nhật CSS

Toàn bộ style được định nghĩa trong file `assets/css/style.css`. Thêm các style mới vào cuối file này.

## Triển khai (Deployment)

Để triển khai lên hosting:

1. Đảm bảo tất cả các đường dẫn đều đúng (tương đối hoặc tuyệt đối)
2. Upload toàn bộ thư mục lên server bằng FTP hoặc SSH
3. Nếu sử dụng các dịch vụ hosting như Netlify, Vercel... chỉ cần push code lên GitHub và kết nối repository

## Tác giả

Max Wellness Việt Nam

## Liên hệ

- 🇻🇳 Hotline VN: +84 0935 671 717
- 🇺🇸 Hotline US: +1 4255 337798
- ✉️ Email: founder@maxwellnessus.com
- 🌐 Website: www.maxwellnessus.com
Buil web demo dựa trên cấu trúc url cho khách xem qua
