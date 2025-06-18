#!/bin/bash

# Tìm tất cả các file HTML trong dự án
find /workspaces/web_Maxwelless -name "*.html" | while read -r file; do
  # Kiểm tra xem file có chứa thẻ favicon cũ không
  if grep -q '<link rel="icon" type="image/png" href="/assets/images/logo/Logo.png">' "$file"; then
    # Thay thế thẻ favicon cũ bằng thẻ favicon mới
    sed -i 's|<link rel="icon" type="image/png" href="/assets/images/logo/Logo.png">|<link rel="icon" href="/favicon.ico">\n    <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicon/favicon.png">\n    <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicon/favicon.png">\n    <link rel="apple-touch-icon" sizes="180x180" href="/assets/images/favicon/favicon.png">\n    <link rel="shortcut icon" href="/favicon.ico">\n    <link rel="manifest" href="/site.webmanifest">|g' "$file"
    echo "Updated favicon in $file"
  else
    echo "No favicon update needed for $file"
  fi
done

echo "Favicon update completed!"
