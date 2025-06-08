Chắc chắn rồi! Dựa trên tất cả các trang và hình ảnh chúng ta đã tạo, cùng với yêu cầu cụ thể của bạn về việc hướng dẫn "GitHub Copilot" (hoặc bất kỳ ai khác) tích hợp chúng vào dự án, tôi đã tạo ra file hướng dẫn chi tiết dưới đây.

Bạn có thể lưu nội dung này thành một file mới trong dự án của mình với tên là `new_content_deployment_guide.md`.

---

# Hướng dẫn Tích hợp Nội dung & Hình ảnh Mới (Deployment Guide)

Tài liệu này cung cấp các bước chi tiết để cập nhật các trang và hình ảnh mới từ thư mục `new-page` vào cấu trúc dự án Max Wellness hiện có. Hướng dẫn này được thiết kế để một lập trình viên hoặc một công cụ AI như GitHub Copilot có thể thực hiện một cách chính xác.

## 1. Di chuyển các Trang và Hình ảnh mới vào Dự án

Cấu trúc của `new-page` như sau:

```
    new-pages/
    ├── kien-thuc/
    │   ├── knowledge_immune_boost.png
    │   ├── knowledge_rejuvenation_wave.png
    │   ├── knowledge_stroke_prevention.png
    │   ├── phong-ngua-dot-quy.html
    │   ├── tre-hoa-te-bao.html
    │   └── tang-cuong-de-khang.html
    ├── lieu-trinh/
    │   ├── ngan-ngua-dot-quy.html
    │   └── trang-da-cap-toc.html
    │   ├── stroke_prevention_hero.png
│   │   └── advanced_skin_whitening_hero.png
    └── san-pham/
        ├── nac.html
        ├── biotin.html
        ├── l-lysine.html
        ├── vitamin-c.html
        |── nac_product_image.png
        ├── biotin_product_image.png
        ├── l-lysine_product_image.png
        └── vitamin-c_product_image.png
```

**Thực hiện các lệnh di chuyển file sau từ thư mục gốc của dự án:**

```bash
# Di chuyển các trang Sản phẩm mới
mv new-page/pages/san-pham/nac.html pages/san-pham/
mv new-page/pages/san-pham/biotin.html pages/san-pham/
mv new-page/pages/san-pham/l-lysine.html pages/san-pham/
mv new-page/pages/san-pham/vitamin-c.html pages/san-pham/

# Di chuyển các trang Liệu trình mới
mv new-page/pages/lieu-trinh/ngan-ngua-dot-quy.html pages/lieu-trinh/
mv new-page/pages/lieu-trinh/trang-da-cap-toc.html pages/lieu-trinh/

# Di chuyển các trang Kiến thức mới
mv new-page/pages/kien-thuc/phong-ngua-dot-quy.html pages/thu-vien-kien-thuc/
mv new-page/pages/kien-thuc/tre-hoa-te-bao.html pages/thu-vien-kien-thuc/
mv new-page/pages/kien-thuc/tang-cuong-de-khang.html pages/thu-vien-kien-thuc/

# Di chuyển các hình ảnh Sản phẩm mới
mv new-page/images/san-pham/nac_product_image.png assets/images/san-pham/
mv new-page/images/san-pham/biotin_product_image.png assets/images/san-pham/
mv new-page/images/san-pham/l-lysine_product_image.png assets/images/san-pham/
mv new-page/images/san-pham/vitamin-c_product_image.png assets/images/san-pham/

# Di chuyển các hình ảnh Liệu trình mới
mv new-page/images/lieu-trinh/stroke_prevention_hero.png assets/images/lieu-trinh/
mv new-page/images/lieu-trinh/advanced_skin_whitening_hero.png assets/images/lieu-trinh/

# Xóa thư mục new-page sau khi hoàn tất
rm -rf new-page
```

## 2. Cập nhật Menu Điều hướng

Mở file `components/header.html` và thực hiện các thay đổi sau:

### 2.1. Cập nhật Menu "Sản Phẩm"

Thêm các dòng sau vào trong `<ul>` của dropdown "Sản Phẩm":
```html
<ul class="dropdown-menu">
    <li><a class="dropdown-item" href="/pages/san-pham/nad-plus.html">NAD+</a></li>
    <li><a class="dropdown-item" href="/pages/san-pham/glutathione.html">Glutathione</a></li>
    <li><a class="dropdown-item" href="/pages/san-pham/coenzyme-q10.html">Coenzyme Q10</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="/pages/san-pham/vitamin-c.html">Vitamin C</a></li>
    <li><a class="dropdown-item" href="/pages/san-pham/nac.html">N-Acetylcysteine (NAC)</a></li>
    <li><a class="dropdown-item" href="/pages/san-pham/biotin.html">Biotin (Vitamin B7)</a></li>
    <li><a class="dropdown-item" href="/pages/san-pham/l-lysine.html">L-Lysine</a></li>
    </ul>
```

### 2.2. Cập nhật Menu "Liệu Trình"

Thêm các dòng sau vào trong `<ul>` của dropdown "Liệu Trình":
```html
<ul class="dropdown-menu">
    <li><a class="dropdown-item" href="/pages/lieu-trinh/nad-plus.html">NAD+ IV</a></li>
    <li><a class="dropdown-item" href="/pages/lieu-trinh/detox-ruou-tao-nang-luong.html">Detox Rượu</a></li>
    <li><a class="dropdown-item" href="/pages/lieu-trinh/trang-da-glutathione.html">Trắng Da Glutathione</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="/pages/lieu-trinh/trang-da-cap-toc.html">Trắng Da Cấp Tốc (Nâng cao)</a></li>
    <li><a class="dropdown-item" href="/pages/lieu-trinh/ngan-ngua-dot-quy.html">Ngăn ngừa Đột quỵ & Hỗ trợ Thần kinh</a></li>
    </ul>
```

### 2.3. Cập nhật Menu "Kiến Thức"

Thêm các dòng sau vào trong `<ul>` của dropdown "Kiến Thức":
```html
<ul class="dropdown-menu">
    <li><a class="dropdown-item" href="/pages/thu-vien-kien-thuc/nad-la-gi.html">NAD+ Là Gì?</a></li>
    <li><a class="dropdown-item" href="/pages/thu-vien-kien-thuc/vitamin-c-lieu-cao.html">Vitamin C Liều Cao</a></li>
    <li><a class="dropdown-item" href="/pages/thu-vien-kien-thuc/exosome-te-bao-goc.html">Exosome & Tế Bào Gốc</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="/pages/thu-vien-kien-thuc/phong-ngua-dot-quy.html">Phòng ngừa Đột quỵ</a></li>
    <li><a class="dropdown-item" href="/pages/thu-vien-kien-thuc/tre-hoa-te-bao.html">Trẻ hóa Tế bào</a></li>
    <li><a class="dropdown-item" href="/pages/thu-vien-kien-thuc/tang-cuong-de-khang.html">Tăng cường Đề kháng</a></li>
    </ul>
```

## 3. Cập nhật Cấu hình Rewrite URL

Nếu bạn đang sử dụng Netlify hoặc Vercel, cần cập nhật file cấu hình để các URL "đẹp" của trang mới hoạt động.

### 3.1. Cho Vercel (`vercel.json`)

Mở file `vercel.json` và thêm các route mới. File cuối cùng sẽ trông tương tự như sau:
```json
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
```
**Lưu ý:** Các quy tắc hiện tại (`([^/]+)`) đã đủ để bao quát các trang mới, vì vậy có thể bạn **không cần thay đổi** file này. Tuy nhiên, hãy kiểm tra lại để chắc chắn.

### 3.2. Cho Netlify (`netlify.toml`)

Mở file `netlify.toml` và đảm bảo các quy tắc redirect đã bao quát các trang mới. Tương tự như Vercel, các quy tắc hiện có có thể đã đủ. File cuối cùng sẽ trông tương tự như sau:
```toml
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
```

## 4. Cập nhật Sitemap

Mở file `sitemap.xml` và thêm các URL của các trang mới vào trong thẻ `<urlset>`.

**Thêm các thẻ `<url>` sau:**
```xml
<url>
      <loc>https://maxwellnessus.com/san-pham/nac</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>
   <url>
      <loc>https://maxwellnessus.com/san-pham/biotin</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>
   <url>
      <loc>https://maxwellnessus.com/san-pham/l-lysine</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>
   <url>
      <loc>https://maxwellnessus.com/san-pham/vitamin-c</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>

   <url>
      <loc>https://maxwellnessus.com/lieu-trinh/ngan-ngua-dot-quy</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>
   <url>
      <loc>https://maxwellnessus.com/lieu-trinh/trang-da-cap-toc</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.8</priority>
   </url>
   
   <url>
      <loc>https://maxwellnessus.com/thu-vien-kien-thuc/phong-ngua-dot-quy</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
   <url>
      <loc>https://maxwellnessus.com/thu-vien-kien-thuc/tre-hoa-te-bao</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
   <url>
      <loc>https://maxwellnessus.com/thu-vien-kien-thuc/tang-cuong-de-khang</loc>
      <lastmod>2025-06-07</lastmod>
      <changefreq>monthly</changefreq>
      <priority>0.7</priority>
   </url>
```

---

Sau khi hoàn thành tất cả các bước trên, hãy commit và push các thay đổi lên GitHub repository của bạn. Hệ thống deploy (Netlify, Vercel, GitHub Pages) sẽ tự động cập nhật website với nội dung mới nhất.