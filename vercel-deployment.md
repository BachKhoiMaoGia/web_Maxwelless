# Hướng dẫn triển khai Max Wellness với Vercel

Tài liệu này hướng dẫn cách triển khai website Max Wellness lên nền tảng Vercel để có bản demo nhanh chóng với hiệu suất cao và khả năng mở rộng.

## 1. Đăng ký và chuẩn bị Vercel

### Tạo tài khoản Vercel
1. Truy cập [Vercel](https://vercel.com/) và đăng ký tài khoản (có thể đăng nhập bằng GitHub)
2. Đăng nhập vào tài khoản Vercel

## 2. Chuẩn bị cấu hình cho Vercel

### Tạo file cấu hình Vercel
Tạo file `vercel.json` trong thư mục gốc để cấu hình URL rewriting:

```bash
# Tạo file vercel.json
cat > /workspaces/web_Maxwelless/vercel.json << 'EOL'
{
  "version": 2,
  "routes": [
    { "src": "/san-pham/([^/]+)", "dest": "/pages/san-pham/$1.html" },
    { "src": "/lieu-trinh/([^/]+)", "dest": "/pages/lieu-trinh/$1.html" },
    { "src": "/thu-vien-kien-thuc/([^/]+)", "dest": "/pages/thu-vien-kien-thuc/$1.html" },
    { "src": "/gioi-thieu", "dest": "/pages/gioi-thieu.html" },
    { "src": "/lien-he", "dest": "/pages/lien-he.html" },
    { "src": "/tu-van", "dest": "/pages/tu-van.html" }
  ],
  "trailingSlash": false
}
EOL
```

## 3. Deploy với Vercel

### Phương pháp 1: Sử dụng Vercel CLI
1. Cài đặt Vercel CLI:
```bash
npm install -g vercel
```

2. Đăng nhập vào Vercel:
```bash
vercel login
```

3. Deploy từ thư mục dự án:
```bash
cd /workspaces/web_Maxwelless
vercel
```

4. Làm theo hướng dẫn để hoàn tất quá trình deploy

### Phương pháp 2: Deploy từ GitHub
1. Đẩy code lên GitHub (xem hướng dẫn trong file github-pages-deployment.md)
2. Trong dashboard Vercel, chọn "New Project"
3. Nhập URL repository GitHub hoặc chọn từ danh sách
4. Cấu hình:
   - Framework Preset: Other
   - Root Directory: ./
   - Build Command: (để trống)
   - Output Directory: ./
5. Chọn "Deploy"

## 4. Cá nhân hóa tên miền

### Sử dụng tên miền của Vercel
Sau khi deploy, Vercel sẽ tạo một URL dạng `project-name.vercel.app`. Bạn có thể thay đổi tên project khi tạo mới hoặc trong phần cài đặt.

### Sử dụng tên miền tùy chỉnh
Nếu bạn đã có tên miền:

1. Vào phần "Settings" của project
2. Chọn tab "Domains"
3. Thêm tên miền của bạn
4. Làm theo hướng dẫn để cấu hình DNS

## 5. Lợi ích khi sử dụng Vercel

- Hiệu suất cực kỳ nhanh với Edge Network toàn cầu
- HTTPS tự động và miễn phí
- Phân tích và giám sát tích hợp
- Môi trường preview cho mỗi commit
- Tích hợp liên tục (CI/CD) với GitHub
- Hỗ trợ Serverless Functions nếu sau này mở rộng trang web
- Quản lý DNS tích hợp

## 6. Cập nhật website

### Cập nhật qua CLI
1. Thực hiện các thay đổi trên mã nguồn
2. Deploy lại:
```bash
vercel
```

### Cập nhật qua GitHub
1. Thực hiện các thay đổi, commit và push lên GitHub
2. Vercel sẽ tự động phát hiện thay đổi và cập nhật trang web

## 7. Theo dõi hiệu suất và phân tích

Vercel cung cấp các công cụ phân tích tích hợp:

1. Vào dashboard của project
2. Chọn tab "Analytics"
3. Xem thông tin về lượt truy cập, thời gian phản hồi, và hiệu suất

## 8. Tạo môi trường staging cho kiểm thử

Vercel tự động tạo môi trường preview cho mỗi branch hoặc pull request:

1. Tạo branch mới trong GitHub: 
```bash
git checkout -b staging
```

2. Push branch lên GitHub:
```bash
git push origin staging
```

3. Vercel sẽ tự động tạo một URL preview cho branch này (ví dụ: maxwellness-staging.vercel.app)

Đây là cách tốt để kiểm thử các thay đổi trước khi đưa vào production.
