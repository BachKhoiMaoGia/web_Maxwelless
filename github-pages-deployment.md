# Hướng dẫn triển khai Max Wellness với GitHub Pages

Tài liệu này sẽ hướng dẫn bạn cách triển khai trang web Max Wellness lên GitHub Pages để có một bản demo nhanh chóng.

## 1. Chuẩn bị repository GitHub

### Tạo repository trên GitHub
1. Đăng nhập vào tài khoản GitHub của bạn
2. Tạo repository mới có tên `maxwellness` (hoặc tên khác bạn muốn)
3. Đặt repository ở chế độ Public để GitHub Pages hoạt động miễn phí

## 2. Đẩy code lên GitHub

### Cấu hình Git và đẩy code
```bash
# Khởi tạo Git repository tại thư mục dự án
cd /workspaces/web_Maxwelless
git init

# Thêm tất cả files vào staging
git add .

# Commit các thay đổi
git commit -m "Initial commit for Max Wellness website"

# Thêm remote repository (thay YOUR_USERNAME bằng tên người dùng GitHub của bạn)
git remote add origin https://github.com/YOUR_USERNAME/maxwellness.git

# Đẩy code lên GitHub
git push -u origin main
```

## 3. Cấu hình GitHub Pages

1. Truy cập vào repository bạn vừa tạo trên GitHub
2. Vào tab "Settings"
3. Cuộn xuống phần "GitHub Pages"
4. Ở mục "Source", chọn branch "main" (hoặc "master" tùy vào branch chính của bạn)
5. Chọn folder "/ (root)" làm thư mục nguồn
6. Nhấp "Save"

## 4. Truy cập website demo

Sau khi cấu hình, GitHub sẽ cung cấp URL cho website của bạn dưới dạng:
```
https://YOUR_USERNAME.github.io/maxwellness/
```

Quá trình xuất bản có thể mất vài phút. Bạn có thể kiểm tra tình trạng xuất bản trong tab "Actions" của repository.

## 5. Lưu ý quan trọng khi sử dụng GitHub Pages

### Điều chỉnh đường dẫn
Vì website sẽ được host tại đường dẫn phụ `/maxwellness/`, bạn có thể cần điều chỉnh các đường dẫn tuyệt đối trong mã HTML:

```html
<!-- Thay vì -->
<a href="/pages/san-pham/nad-plus.html">

<!-- Sử dụng -->
<a href="./pages/san-pham/nad-plus.html">
<!-- Hoặc -->
<a href="/maxwellness/pages/san-pham/nad-plus.html">
```

### Giới hạn về .htaccess
GitHub Pages không hỗ trợ file .htaccess, nên các cấu hình URL rewriting sẽ không hoạt động. Bạn cần sử dụng đường dẫn đầy đủ với phần mở rộng .html.

## 6. Cập nhật website

Để cập nhật website đã deploy:

```bash
# Thực hiện các thay đổi trên mã nguồn

# Thêm các thay đổi vào staging
git add .

# Commit thay đổi
git commit -m "Cập nhật nội dung website"

# Đẩy lên GitHub
git push origin main
```

Mỗi khi bạn đẩy lên GitHub, website sẽ tự động được cập nhật sau vài phút.
