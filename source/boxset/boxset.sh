#!/bin/bash

# 使用說明  
# 1. 複製此腳本到目標機器
# 2. 開啟終端並進入腳本所在的目錄
# 3. 使用 chmod +x 設定腳本為可執行權限
# 4. 執行腳本以開始設置

# 靶機管理設定
echo "設置靶機管理"
# 檢查並安裝SSH服務
if ! dpkg -l | grep -q "openssh-server"; then
    apt-get update
    apt-get install -y openssh-server
fi

# 新增管理用戶"admin"並設定密碼為"admin"
useradd -m admin
echo "admin:admin" | chpasswd

# 外部滲透設定
echo "外部滲透設定"
# 新增一般用戶"bob"並更改密碼為"password"
useradd bob
echo "bob:password" | chpasswd

# 在bob的主目錄中新增一個user.txt檔案，寫入"flag is here"
echo "flag is here" > /home/bob/user.txt

# 內部提權設定
echo "內部提權設定"
# 檢查sudo是否存在，若不存在則安裝sudo
if ! dpkg -l | grep -q "sudo"; then
    apt-get update
    apt-get install -y sudo
fi

# 製作一個cp提權漏洞，允許所有使用者使用並具有root權限
echo 'cp /bin/bash /tmp/rootbash; chmod +s /tmp/rootbash' > /usr/local/bin/cpexploit
chmod +x /usr/local/bin/cpexploit

# 啟用 SSH 服務
echo "啟用 SSH 服務"
service ssh start

# 完成設定
echo "設置完成"
