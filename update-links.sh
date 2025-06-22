#!/bin/bash

echo "Cập nhật liên kết từ lieu-trinh sang combo-san-pham-tai-tao trong toàn bộ project..."

# Thay đổi liên kết trong URL
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|href="/pages/lieu-trinh/|href="/pages/combo-san-pham-tai-tao/|g' {} \;

# Thay đổi tên hiển thị
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|>Liệu Trình<|>Combo Sản Phẩm Tái Tạo<|g' {} \;
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|>Liệu trình<|>Combo sản phẩm tái tạo<|g' {} \;

# Thay đổi các URL trong breadcrumb
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|>Liệu Trình</li>|>Combo Sản Phẩm Tái Tạo</li>|g' {} \;

# Thay đổi từ liệu trình thành combo sản phẩm trong tiêu đề
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|Liệu trình |Combo sản phẩm tái tạo |g' {} \;

# Thay đổi từ ngữ liên quan đến tiêm truyền
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|truyền IV|bổ sung tăng cường|g' {} \;
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|truyền|bổ sung|g' {} \;
find /workspaces/web_Maxwelless -name "*.html" -exec sed -i 's|tiêm|cung cấp|g' {} \;

echo "Cập nhật hoàn tất!"
