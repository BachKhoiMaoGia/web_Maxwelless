#!/bin/bash

echo "=== Kiểm tra các thuật ngữ còn sót ==="
echo "1. Kiểm tra 'Combo sản phẩm tái tạo nổi bật':"
grep -r "Combo sản phẩm tái tạo nổi bật" --include="*.html" /workspaces/web_Maxwelless/

echo "2. Kiểm tra 'Liệu trình nổi bật':"
grep -r "Liệu trình nổi bật" --include="*.html" /workspaces/web_Maxwelless/

echo "3. Kiểm tra 'tiêm':"
grep -r "tiêm" --include="*.html" /workspaces/web_Maxwelless/

echo "4. Kiểm tra 'truyền':"
grep -r "truyền" --include="*.html" /workspaces/web_Maxwelless/ | grep -v "truyền thông"

echo "=== Hoàn tất kiểm tra ==="
