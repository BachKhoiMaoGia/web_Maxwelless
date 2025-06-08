# Hướng dẫn Thay thế và Thêm Hình ảnh Max Wellness

Tài liệu này chỉ rõ các đường dẫn file hình ảnh cũ trong dự án và tên file gợi ý cho các hình ảnh mới cần được thay thế hoặc thêm vào.

**Lưu ý:**
* Sau khi tải các hình ảnh mới được tạo về, hãy đặt tên file như gợi ý (hoặc tên bạn chọn) và đặt chúng vào các thư mục tương ứng trong `assets/images/`.
* Nếu bạn chọn ghi đè file cũ bằng cách sử dụng lại tên file cũ cho ảnh mới, bạn sẽ không cần thay đổi code HTML, nhưng cần xóa cache trình duyệt để thấy thay đổi.
* Nếu bạn dùng tên file mới, hãy cập nhật đường dẫn `src` trong các file HTML tương ứng.

## 1. Logo Chính và Favicon

* **Đường dẫn file cũ (cho tất cả các vị trí logo & favicon):** `/assets/images/logo/Logo.png`
* **Tên file ảnh mới cần thay thế:** `Logo.png` (Ghi đè file cũ bằng logo "Max Wellness" đã được thống nhất cuối cùng - http://googleusercontent.com/image_generation_content/0 - phiên bản DNA giống ảnh ref bạn gửi).

## 2. Hình ảnh Trang Chủ (`index.html`)

* **Mục "Giới thiệu" (Tại sao chọn chúng tôi):**
    * Đường dẫn file cũ: `/assets/images/home/Giới thiệu.png`
    * Tên file ảnh mới cần thay: `home_why_choose_us_collage.png` (Ví dụ: http://googleusercontent.com/image_generation_content/0 - phiên bản có logo "Max Wellness" và text 4 lý do nếu bạn duyệt).
* **Mục "Liệu trình nổi bật" (ảnh NAD+):**
    * Đường dẫn file cũ: `/assets/images/lieu-trinh/Liệu trình NAD+.png`
    * Tên file ảnh mới cần thay: `nad_plus_thumbnail.png` (Sử dụng phiên bản thu nhỏ của `nad_plus_product_molecule.png` - http://googleusercontent.com/image_generation_content/11).
* **Mục "Liệu trình nổi bật" (ảnh Detox rượu):**
    * Đường dẫn file cũ: `/assets/images/lieu-trinh/Detoxgan.png`
    * Tên file ảnh mới cần thay: `detox_liver_thumbnail.png` (Đã tạo - http://googleusercontent.com/image_generation_content/24).
* **Mục "Liệu trình nổi bật" (ảnh Glutathione):**
    * Đường dẫn file cũ: `/assets/images/san-pham/Glutathione.png`
    * Tên file ảnh mới cần thay: `glutathione_thumbnail.png` (Đã tạo - http://googleusercontent.com/image_generation_content/18).
* **Mục "Liệu trình nổi bật" (ảnh CoQ10):**
    * Đường dẫn file cũ: `/assets/images/san-pham/CoQ10.png`
    * Tên file ảnh mới cần thay: `coq10_thumbnail.png` (Đã tạo - http://googleusercontent.com/image_generation_content/21).
* **Mục "Contact Form Section" (Tìm liệu trình phù hợp):**
    * Đường dẫn file cũ: `/assets/images/lieu-trinh/Tăng cường đề kháng.png`
    * Tên file ảnh mới cần thay: `home_contact_section_vision.png`

## 3. Hình ảnh Trang Giới Thiệu (`pages/gioi-thieu.html`)

* **Mục "About Us" (Về Max Wellness):**
    * Đường dẫn file cũ: `/assets/images/home/About_us.png`
    * Tên file ảnh mới cần thay: `about_us_team_collaboration.png` (Đã tạo - http://googleusercontent.com/image_generation_content/7).
* **Mục "Laboratory Section":**
    * Quyết định: Bỏ ảnh, thay bằng form đặt lịch tham quan (bạn tự cập nhật HTML). Không cần ảnh mới.
* **Mục "Đội ngũ chuyên gia":**
    * Đường dẫn file cũ 1: `/assets/images/Chuyengia/healthcare-system-fitness-manager-1200x1600.jpg`
    * Tên file ảnh mới 1: `expert_team_01_attentive.png` (Đã tạo - http://googleusercontent.com/image_generation_content/31).
    * Đường dẫn file cũ 2: `/assets/images/Chuyengia/power-wellness-company-1200x1600.jpg`
    * Tên file ảnh mới 2: `expert_team_02_knowledgeable.png` (Đã tạo - http://googleusercontent.com/image_generation_content/32).
    * Đường dẫn file cũ 3: `/assets/images/Chuyengia/center-management-footer-1200x1600.jpg`
    * Tên file ảnh mới 3: `expert_team_03_supportive.png` (Đã tạo - http://googleusercontent.com/image_generation_content/33).
* **Mục "Chứng nhận & Đối tác":**
    * FDA:
        * Đường dẫn file cũ: `/assets/images/Certification/FDA.jpeg`
        * Tên file ảnh mới: `icon_fda_certified.png` (Đã tạo - http://googleusercontent.com/image_generation_content/37).
    * cGMP:
        * Đường dẫn file cũ: `/assets/images/Certification/cGMP.jpeg`
        * Tên file ảnh mới: `icon_cgmp_standard.png` (Đã tạo - http://googleusercontent.com/image_generation_content/38).
    * AABB:
        * Đường dẫn file cũ: `/assets/images/Certification/AABB.jpeg`
        * Tên file ảnh mới: `icon_aabb_certified.png` (Đã tạo - http://googleusercontent.com/image_generation_content/39).
    * Đối tác y tế:
        * Đường dẫn file cũ: `/assets/images/Certification/Doi_tac.png`
        * Tên file ảnh mới: `icon_medical_partner.png`

## 4. Hình ảnh Trang Tư Vấn (`pages/tu-van.html`)

* **Ảnh bên cạnh form tư vấn:**
    * Đường dẫn file cũ: `/assets/images/home/Giới thiệu.png`
    * Tên file ảnh mới: `consultation_personalized_solutions.png` (Đã tạo - http://googleusercontent.com/image_generation_content/34).
* **Mục "Liệu trình phổ biến":** Sử dụng lại các ảnh thumbnail đã tạo/quyết định cho NAD+, Glutathione, Detox Rượu, CoQ10.

## 5. Hình ảnh Trang Sản Phẩm

* **NAD+ (`pages/san-pham/nad-plus.html`):**
    * Ảnh chính:
        * Đường dẫn file cũ: `/assets/images/san-pham/Nadh.png`
        * Tên file ảnh mới: `nad_plus_product_molecule.png` (Đã tạo - http://googleusercontent.com/image_generation_content/11).
* **Glutathione (`pages/san-pham/glutathione.html`):**
    * Ảnh chính:
        * Đường dẫn file cũ: `/assets/images/san-pham/Glutathione.png`
        * Tên file ảnh mới: `glutathione_product_molecule.png` (Đã tạo - http://googleusercontent.com/image_generation_content/13).
* **Coenzyme Q10 (`pages/san-pham/coenzyme-q10.html`):**
    * Ảnh chính:
        * Đường dẫn file cũ: `/assets/images/san-pham/CoQ10.png`
        * Tên file ảnh mới: `coq10_product_cellular_energy.png` (Đã tạo - http://googleusercontent.com/image_generation_content/19).

## 6. Hình ảnh Trang Liệu Trình

* **NAD+ (`pages/lieu-trinh/nad-plus.html`):**
    * Ảnh chính:
        * Đường dẫn file cũ: `/assets/images/lieu-trinh/Liệu trình NAD+.png`
        * Tên file ảnh mới: `nad_plus_treatment_energy_flow.png` (Đã tạo - http://googleusercontent.com/image_generation_content/12).
* **Trắng Da Glutathione (`pages/lieu-trinh/trang-da-glutathione.html`):**
    * Ảnh chính:
        * Đường dẫn file cũ: `/assets/images/san-pham/Glutathione.png`
        * Tên file ảnh mới: `glutathione_treatment_facial_radiance.png` (Đã tạo - http://googleusercontent.com/image_generation_content/16).
    * Ảnh kết quả:
        * Đường dẫn file cũ: `/assets/images/glutathione-results.jpg`
        * Tên file ảnh mới: `glutathione_skin_improvement_graphic.png` (Đã tạo - http://googleusercontent.com/image_generation_content/17).
* **Detox Rượu (`pages/lieu-trinh/detox-ruou-tao-nang-luong.html`):**
    * Ảnh chính:
        * Đường dẫn file cũ: `/assets/images/lieu-trinh/Detoxgan.png`
        * Tên file ảnh mới: `detox_liver_protection.png` (Đã tạo - http://googleusercontent.com/image_generation_content/22).
    * Ảnh testimonial 1:
        * Đường dẫn file cũ: `/assets/images/testimonial-1.jpg`
        * Tên file ảnh mới: `detox_testimonial_wellness_feeling_01.png` (Đã tạo - http://googleusercontent.com/image_generation_content/23).
    * Ảnh testimonial 2:
        * Đường dẫn file cũ: `/assets/images/testimonial-2.jpg`
        * Tên file ảnh mới: `detox_testimonial_fresh_energy_02.png` (Đã tạo - http://googleusercontent.com/image_generation_content/35).
    * Ảnh testimonial 3:
        * Đường dẫn file cũ: `/assets/images/testimonial-3.jpg`
        * Tên file ảnh mới: `detox_testimonial_clear_mind_03.png` (Đã tạo - http://googleusercontent.com/image_generation_content/36).

## 7. Hình ảnh Trang Thư Viện Kiến Thức

* **"NAD+ là gì?" (`pages/thu-vien-kien-thuc/nad-la-gi.html`):**
    * Ảnh hero:
        * Đường dẫn file cũ: `/assets/images/thu-vien-kien-thuc/NAD,NADH.png`
        * Tên file ảnh mới: `knowledge_nad_plus_molecule_energy.png` (Đã tạo - http://googleusercontent.com/image_generation_content/25).
    * Ảnh trong bài (nếu dùng lại ảnh cũ): Cập nhật theo ảnh hero mới.
* **"Vitamin C liều cao" (`pages/thu-vien-kien-thuc/vitamin-c-lieu-cao.html`):**
    * Ảnh hero và ảnh trong bài:
        * Đường dẫn file cũ: `/assets/images/thu-vien-kien-thuc/VitaminC.png`
        * Tên file ảnh mới: `knowledge_vitamin_c_antioxidant_power.png` (Đã tạo - http://googleusercontent.com/image_generation_content/26).
* **"Exosome" (`pages/thu-vien-kien-thuc/exosome-te-bao-goc.html`):**
    * Ảnh hero và ảnh trong bài:
        * Đường dẫn file cũ: `/assets/images/thu-vien-kien-thuc/exosometebaogoc.png`
        * Tên file ảnh mới: `knowledge_exosomes_cellular_messengers.png` (Đã tạo - http://googleusercontent.com/image_generation_content/27).
* **Thumbnails cho "Bài viết liên quan/khác":**
    * NAD+: Sử dụng `nad_plus_product_molecule.png` (thu nhỏ).
    * Vitamin C: `thumbnail_vitamin_c.png` (Đã tạo - http://googleusercontent.com/image_generation_content/28).
    * Exosome: `thumbnail_exosome.png` (Đã tạo - http://googleusercontent.com/image_generation_content/29).
    * Detox gan: `detox_liver_thumbnail.png` (Đã tạo - http://googleusercontent.com/image_generation_content/24).
    * Glutathione: `glutathione_thumbnail.png` (Đã tạo - http://googleusercontent.com/image_generation_content/18).
    * CoQ10: `coq10_thumbnail.png` (Đã tạo - http://googleusercontent.com/image_generation_content/21).
    * Tăng cường đề kháng: `thumbnail_immune_boost.png` (Đã tạo - http://googleusercontent.com/image_generation_content/30).

## 8. Hình ảnh Components

* **`components/testimonials.html`:**
    * Đường dẫn file cũ: `/assets/images/home/Khachhangnoigi.png`
    * Tên file ảnh mới: `testimonials_collage_image.png`
* **`components/service-quality.html`:**
    * Đường dẫn file cũ: `/assets/images/service-quality.jpg`
    * Tên file ảnh mới: *(Cần tạo/quyết định)* - Ví dụ: `service_quality_guarantee.png`