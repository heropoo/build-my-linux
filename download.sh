#!/bin/sh

src_path="src"
kernel_version="4.19.193"
kernel_file="linux-${kernel_version}.tar.xz"
kernel_sign_file="linux-${kernel_version}.tar.sign"
kernel_file_url="https://mirrors.edge.kernel.org/pub/linux/kernel/v4.x/$kernel_file"
kernel_sign_file_url="https://mirrors.edge.kernel.org/pub/linux/kernel/v4.x/$kernel_sign_file"

busybox_version="1.30.1"
busybox_file="busybox-$busybox_version.tar.bz2"
busybox_sign_file="busybox-$busybox_version.tar.bz2.sig"
busybox_file_url="http://busybox.net/downloads/$busybox_file"
busybox_sign_file_url="http://busybox.net/downloads/$busybox_sign_file"

if [ ! -d "$src_path" ]; then
    mkdir "$src_path"
fi

# if [ ! -f "$src_path/$kernel_file" ]; then
    echo  "Download $busybox_sign_file_url into $src_path/$kernel_sign_file ..." 
    curl -o "$src_path/$kernel_sign_file" $kernel_sign_file_url 
    echo "Download $kernel_file_url into $src_path/$kernel_file ..."
    # curl -o "$src_path/$kernel_file" $kernel_file_url
    gpg --verify "$src_path/$kernel_sign_file" "$src_path/$kernel_file"
# fi

# if [ -f "$src_path/$busybox_file" ]; then
    # echo "From $busybox_file_url download $src_path/$busybox_file"
    # echo  $busybox_sign_file_url
    # curl -o "$src_path/$busybox_sign_file" $busybox_sign_file_url
    # curl -o "$src_path/$busybox_file" $busybox_file_url
    # echo "gpg --verify $src_path/$busybox_sign_file $src_path/$busybox_file"
    gpg --verify "$src_path/$busybox_sign_file" "$src_path/$busybox_file"
# fi




