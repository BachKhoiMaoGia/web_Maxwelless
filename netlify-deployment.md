# Hướng dẫn triển khai Max Wellness với Netlify

Tài liệu này hướng dẫn cách triển khai website Max Wellness lên Netlify để có bản demo nhanh chóng với các tính năng hỗ trợ như URL rewriting, HTTPS miễn phí, và tên miền tùy chỉnh.

## 1. Đăng ký và chuẩn bị Netlify

### Tạo tài khoản Netlify
1. Truy cập [Netlify](https://www.netlify.com/) và đăng ký tài khoản (có thể đăng nhập bằng GitHub)
2. Đăng nhập vào tài khoản Netlify

## 2. Deploy từ thư mục local

### Phương pháp 1: Kéo thả thư mục (Drag & Drop)
1. Tại trang Teams overview của Netlify, nhấp vào tab "Sites"
2. Kéo và thả toàn bộ thư mục `/workspaces/web_Maxwelless` vào khu vực "Drag and drop your site folder here"
3. Netlify sẽ tự động tải lên và triển khai trang web

### Phương pháp 2: Deploy từ GitHub
1. Đẩy code lên GitHub (xem hướng dẫn trong file github-pages-deployment.md)
2. Trong Netlify, chọn "New site from Git"
3. Chọn GitHub làm nhà cung cấp Git
4. Cho phép Netlify truy cập vào repository của bạn
5. Chọn repository maxwellness
6. Cấu hình:
   - Branch: main (hoặc master)
   - Build command: (để trống vì là trang tĩnh)
   - Publish directory: / (root)
7. Nhấp "Deploy site"

## 3. Cấu hình URL Rewriting

Netlify hỗ trợ cấu hình URL rewriting tương tự như .htaccess. Tạo file `netlify.toml` trong thư mục gốc:

```bash
# Tạo file netlify.toml
cat > /workspaces/web_Maxwelless/netlify.toml << 'EOL'
# Cấu hình Netlify để hỗ trợ URL rewriting

[[redirects]]
  from = "/san-pham/*"
  to = "/pages/san-pham/:splat.html"
  status = 200

[[redirects]]
  from = "/lieu-trinh/*"
  to = "/pages/lieu-trinh/:splat.html"
  status = 200

[[redirects]]
  from = "/thu-vien-kien-thuc/*"
  to = "/pages/thu-vien-kien-thuc/:splat.html"
  status = 200

[[redirects]]
  from = "/gioi-thieu"
  to = "/pages/gioi-thieu.html"
  status = 200

[[redirects]]
  from = "/lien-he"
  to = "/pages/lien-he.html"
  status = 200

[[redirects]]
  from = "/tu-van"
  to = "/pages/tu-van.html"
  status = 200

# Cấu hình 404 page
[[redirects]]
  from = "/*"
  to = "/404.html"
  status = 404
EOL
```

## 4. Cá nhân hóa tên miền

### Sử dụng tên miền miễn phí của Netlify
Sau khi deploy, Netlify sẽ tạo một URL ngẫu nhiên dạng `random-name.netlify.app`. Bạn có thể thay đổi phần "random-name" thành tên bạn muốn:

1. Vào phần "Site settings" của trang web vừa deploy
2. Chọn "Change site name" và nhập tên bạn muốn (ví dụ: maxwellness-demo)
3. Trang web của bạn sẽ có địa chỉ: `https://maxwellness-demo.netlify.app`

### Sử dụng tên miền tùy chỉnh
Nếu bạn đã có tên miền:

1. Vào phần "Domain settings" của trang web trên Netlify
2. Chọn "Add custom domain"
3. Nhập tên miền của bạn (ví dụ: maxwellnessus.com)
4. Làm theo hướng dẫn để cấu hình DNS

## 5. Cập nhật website

### Cập nhật qua Drag & Drop
1. Thực hiện các thay đổi trên mã nguồn
2. Kéo và thả lại thư mục lên Netlify

### Cập nhật qua GitHub
1. Thực hiện các thay đổi, commit và push lên GitHub
2. Netlify sẽ tự động phát hiện thay đổi và cập nhật trang web

## 6. Lợi ích khi sử dụng Netlify

- HTTPS tự động và miễn phí
- Hỗ trợ URL rewriting (không cần .htaccess)
- Tích hợp liên tục (CI/CD) khi sử dụng với GitHub
- CDN toàn cầu giúp trang web tải nhanh
- Form handling tích hợp
- Tên miền tùy chỉnh dễ dàng

## 7. Theo dõi và phân tích

Netlify cung cấp công cụ theo dõi cơ bản:

1. Vào phần "Analytics" trong dashboard của trang web 
2. Xem thông tin về lượt truy cập, tải trang và lỗi

Để phân tích chi tiết hơn, bạn có thể thêm Google Analytics vào trang web.
