# Hướng dẫn triển khai demo website Max Wellness

Tài liệu này cung cấp tổng quan về các phương pháp triển khai nhanh website Max Wellness để demo.

## Tổng quan các phương pháp triển khai

| Phương pháp | Ưu điểm | Thời gian triển khai | Độ phức tạp | Phù hợp cho |
|-------------|---------|----------------------|-------------|-------------|
| GitHub Pages | Miễn phí, tích hợp với GitHub | 5-10 phút | Thấp | Demo nhanh, dự án cá nhân |
| Netlify | Miễn phí, hỗ trợ URL rewriting, HTTPS | 5-10 phút | Thấp | Demo chuyên nghiệp, dự án nhỏ-vừa |
| Vercel | Hiệu năng cao, nhiều tính năng | 10-15 phút | Trung bình | Demo dự án thực tế, có khả năng mở rộng |
| Shared Hosting | Kiểm soát đầy đủ, hỗ trợ .htaccess | 30-60 phút | Cao | Triển khai chính thức |

## Các tài liệu hướng dẫn chi tiết

1. **GitHub Pages**: Xem hướng dẫn chi tiết trong file [github-pages-deployment.md](/workspaces/web_Maxwelless/github-pages-deployment.md)

2. **Netlify**: Xem hướng dẫn chi tiết trong file [netlify-deployment.md](/workspaces/web_Maxwelless/netlify-deployment.md)

3. **Vercel**: Xem hướng dẫn chi tiết trong file [vercel-deployment.md](/workspaces/web_Maxwelless/vercel-deployment.md)

4. **Hosting truyền thống**: Xem hướng dẫn chi tiết trong file [deployment-guide.md](/workspaces/web_Maxwelless/deployment-guide.md)

## Đề xuất phương pháp triển khai nhanh nhất

Để có bản demo nhanh chóng và hoạt động đầy đủ nhất, chúng tôi khuyến nghị sử dụng **Netlify**:

1. Đăng ký tài khoản tại [netlify.com](https://www.netlify.com/)
2. Kéo và thả thư mục dự án vào Netlify
3. Website sẽ được triển khai tự động trong vài phút

## Sử dụng URL rewriting

Đối với các phương pháp triển khai không hỗ trợ .htaccess (GitHub Pages), bạn sẽ cần:
- GitHub Pages: Sử dụng đường dẫn đầy đủ với phần mở rộng .html
- Netlify/Vercel: Được hỗ trợ thông qua file cấu hình (đã được tạo)

## Cấu hình đã được chuẩn bị

Chúng tôi đã chuẩn bị sẵn các cấu hình cần thiết cho mỗi phương pháp:

- `.htaccess` - Cho hosting truyền thống
- `netlify.toml` - Cho Netlify
- `vercel.json` - Cho Vercel

## Lưu ý

- Trước khi triển khai, đảm bảo thay thế tất cả hình ảnh mẫu bằng hình ảnh thực tế
- Kiểm tra kỹ thông tin liên hệ trong website để đảm bảo chính xác
- Thử nghiệm website trên nhiều thiết bị và trình duyệt khác nhau sau khi triển khai
