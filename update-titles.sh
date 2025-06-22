#!/bin/bash

# Thay đổi từ "Combo sản phẩm" sang "Sản phẩm" trong các tiêu đề section
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's/"section-title">Combo sản phẩm tái tạo /"section-title">Sản phẩm /g' {} \;
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's/"section-title">Combo sản phẩm /"section-title">Sản phẩm /g' {} \;

echo "Đã cập nhật tiêu đề section."
