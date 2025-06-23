#!/bin/bash

echo "=== Kiểm tra sau cập nhật ==="
echo "1. Kiểm tra 'Tìm liệu trình phù hợp với bạn':"
grep -r "Tìm liệu trình phù hợp với bạn" --include="*.html" /workspaces/web_Maxwelless/

echo "2. Kiểm tra 'Detox Rượu':"
grep -r "Detox Rượu" --include="*.html" /workspaces/web_Maxwelless/

echo "3. Kiểm tra liên kết đến trang-da-glutathione.html:"
grep -r "trang-da-glutathione.html" --include="*.html" /workspaces/web_Maxwelless/

echo "4. Kiểm tra hiện diện của tệp trang-da-glutathione.html:"
find /workspaces/web_Maxwelless -name "trang-da-glutathione.html" | wc -l

echo "=== Hoàn tất kiểm tra ==="
