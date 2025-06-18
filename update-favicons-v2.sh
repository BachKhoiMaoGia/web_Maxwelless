#!/bin/bash

# Tìm tất cả các file HTML trong dự án
find /workspaces/web_Maxwelless -name "*.html" | while read -r file; do
  # Kiểm tra xem file có chứa thẻ favicon cũ không
  if grep -q 'link rel="icon" type="image/png" sizes="32x32" href="/assets/images/logo/Logo.png"' "$file"; then
    # Thay thế các thẻ favicon cũ bằng thẻ favicon mới
    sed -i '
      /<link rel="icon" type="image\/png" sizes="32x32" href="\/assets\/images\/logo\/Logo.png">/c\
      <link rel="icon" href="/favicon.ico">\
      <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicon/favicon.png">\
      <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicon/favicon.png">\
      <link rel="apple-touch-icon" sizes="180x180" href="/assets/images/favicon/favicon.png">\
      <link rel="shortcut icon" href="/favicon.ico">\
      <link rel="manifest" href="/site.webmanifest">
      /<link rel="icon" type="image\/png" sizes="16x16" href="\/assets\/images\/logo\/Logo.png">/d
      /<link rel="apple-touch-icon" sizes="180x180" href="\/assets\/images\/logo\/Logo.png">/d
    ' "$file"
    echo "Updated favicon in $file"
  else
    echo "No favicon update needed for $file"
  fi
done

echo "Favicon update completed!"
