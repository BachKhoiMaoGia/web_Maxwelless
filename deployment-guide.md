# Hướng dẫn triển khai website Max Wellness

Tài liệu này cung cấp các bước cần thiết để triển khai website Max Wellness lên môi trường thực tế.

## 1. Yêu cầu hệ thống

- Web hosting hỗ trợ PHP 7.4+ (hoặc hosting tĩnh vì đây là website HTML tĩnh)
- Hỗ trợ .htaccess (Apache) hoặc cấu hình tương đương cho Nginx
- SSL/TLS để hỗ trợ HTTPS
- Dung lượng tối thiểu: 500MB
- Băng thông: Tùy theo lưu lượng truy cập dự kiến

## 2. Chuẩn bị trước khi triển khai

### 2.1. Tối ưu hình ảnh
Tất cả hình ảnh nên được tối ưu trước khi đưa lên server thực tế:
```bash
# Cài đặt công cụ tối ưu hình ảnh imagemin
npm install -g imagemin-cli

# Tối ưu tất cả hình ảnh JPG và PNG
imagemin assets/images/*.{jpg,png} --out-dir=assets/images/optimized
```

### 2.2. Thay thế hình ảnh mẫu
Thay thế tất cả hình ảnh mẫu trong thư mục `assets/images` bằng hình ảnh thực tế của Max Wellness:
- Logo chính và logo trắng
- Hình ảnh sản phẩm và liệu trình
- Hình ảnh banner và background
- Hình ảnh đội ngũ và chứng nhận

### 2.3. Cập nhật thông tin liên hệ
Đảm bảo tất cả thông tin liên hệ đều chính xác trong:
- Footer
- Trang liên hệ
- Các form liên hệ

## 3. Cấu hình tên miền và hosting

### 3.1. Mua tên miền
Đăng ký tên miền maxwellnessus.com hoặc tên miền khác phù hợp.

### 3.2. Mua hosting
Lựa chọn nhà cung cấp hosting phù hợp với yêu cầu hệ thống ở mục 1.

### 3.3. Cấu hình DNS
Cấu hình DNS để trỏ tên miền về hosting:
- Trỏ bản ghi A hoặc CNAME về hosting
- Cấu hình email MX records nếu sử dụng email với tên miền
- Thêm bản ghi TXT cho xác minh (nếu cần)

### 3.4. Cài đặt SSL/TLS
Kích hoạt SSL/TLS để có HTTPS:
- Sử dụng Let's Encrypt miễn phí hoặc SSL trả phí
- Cấu hình chuyển hướng từ HTTP sang HTTPS

## 4. Triển khai website

### 4.1. Tải tệp lên hosting
```bash
# Sử dụng FTP, SFTP hoặc Git để tải tệp lên
ftp ftp.maxwellnessus.com
# Hoặc
scp -r /workspaces/web_Maxwelless/* user@maxwellnessus.com:/path/to/public_html/
```

### 4.2. Kiểm tra cấu hình .htaccess
Đảm bảo file .htaccess hoạt động đúng trên hosting:
- Các URL thân thiện hoạt động
- Chuyển hướng HTTP sang HTTPS hoạt động
- Bảo mật file hoạt động

### 4.3. Cấu hình form liên hệ
Cập nhật action URL cho các form liên hệ để gửi đến endpoint xử lý phù hợp:
- Tạo script xử lý form (PHP) nếu cần
- Hoặc kết nối với dịch vụ gửi form như Formspree, FormSubmit

## 5. Kiểm tra sau triển khai

### 5.1. Kiểm tra tương thích trình duyệt
Kiểm tra website trên các trình duyệt phổ biến:
- Chrome, Firefox, Safari, Edge
- Kiểm tra trên thiết bị di động và máy tính bảng

### 5.2. Kiểm tra tốc độ tải trang
```
# Công cụ kiểm tra
- Google PageSpeed Insights: https://pagespeed.web.dev/
- GTmetrix: https://gtmetrix.com/
- WebPageTest: https://www.webpagetest.org/
```

### 5.3. Kiểm tra SEO cơ bản
- Xác minh meta tags, title tags
- Kiểm tra robots.txt và sitemap.xml
- Đảm bảo các thẻ heading (H1, H2, ...) được sử dụng hợp lý
- Kiểm tra các thuộc tính alt cho hình ảnh

### 5.4. Kiểm tra khả năng tiếp cận (Accessibility)
- Kiểm tra độ tương phản màu sắc
- Đảm bảo nội dung có thể tiếp cận bằng bàn phím
- Kiểm tra thuộc tính alt cho hình ảnh
- Test với công cụ như WAVE: https://wave.webaim.org/

## 6. Bảo trì và cập nhật

### 6.1. Quy trình cập nhật nội dung
Mô tả quy trình cập nhật nội dung website, bao gồm:
- Cập nhật bài viết mới
- Cập nhật sản phẩm/dịch vụ mới
- Cập nhật hình ảnh và media

### 6.2. Sao lưu website
```
# Tạo lịch sao lưu định kỳ
- Sao lưu toàn bộ tệp website: hàng tuần
- Sao lưu các tệp đã thay đổi: hàng ngày
```

### 6.3. Theo dõi hiệu suất
Thiết lập các công cụ theo dõi:
- Google Analytics 4 để theo dõi lưu lượng
- Google Search Console để theo dõi SEO
- Công cụ theo dõi thời gian hoạt động như UptimeRobot

## 7. Tối ưu hóa marketing

### 7.1. Tích hợp công cụ phân tích
Thêm mã theo dõi Google Analytics:
```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### 7.2. Tích hợp mạng xã hội
- Thêm nút chia sẻ mạng xã hội vào trang sản phẩm và bài viết
- Cập nhật liên kết đến các trang mạng xã hội chính thức

### 7.3. Chiến lược SEO
- Đăng ký Google Search Console
- Gửi sitemap để Google lập chỉ mục
- Theo dõi hiệu suất từ khóa
- Phát triển nội dung chất lượng cao thường xuyên

---

## Thông tin liên hệ hỗ trợ kỹ thuật

Nếu bạn gặp bất kỳ vấn đề nào trong quá trình triển khai, vui lòng liên hệ:

- **Email kỹ thuật:** tech@maxwellnessus.com
- **Hotline:** +84 0935 671 717

---

**Lưu ý:** Tài liệu này nên được cập nhật khi có thay đổi về cấu trúc website hoặc quy trình triển khai.
