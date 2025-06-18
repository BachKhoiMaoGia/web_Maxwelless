#!/bin/bash

# Đường dẫn đến thư mục gốc của dự án
PROJECT_DIR="/workspaces/web_Maxwelless"

# Tìm tất cả các file HTML
find "$PROJECT_DIR" -type f -name "*.html" | while read -r file; do
    # Kiểm tra xem file đã có favicon đầy đủ chưa
    if ! grep -q "apple-touch-icon" "$file"; then
        # Thay thế dòng favicon cũ bằng favicon mới
        sed -i '/<link rel="icon" type="image\/png" href="\/assets\/images\/logo\/Logo.png">/c\
    <link rel="icon" type="image\/png" sizes="32x32" href="\/assets\/images\/logo\/Logo.png">\
    <link rel="icon" type="image\/png" sizes="16x16" href="\/assets\/images\/logo\/Logo.png">\
    <link rel="apple-touch-icon" sizes="180x180" href="\/assets\/images\/logo\/Logo.png">\
    <meta name="msapplication-TileImage" content="\/assets\/images\/logo\/Logo.png">\
    <meta name="msapplication-TileColor" content="#1E5F8C">\
    <meta name="theme-color" content="#1E5F8C">' "$file"
        
        echo "Updated favicon in $file"
    else
        echo "Favicon already updated in $file"
    fi
done

echo "Favicon update completed!"
