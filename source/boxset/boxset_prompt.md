# 目的
* 建立一台用於攻防演練的機器
* 請提供一個bash script 可以在給定的ubuntu機器中設置漏洞
## 操作說明
* 解釋bash script 運行流程
* 使用者可以使用透過SSH 來管理機器

## 基本設定
* 確認ssh服務存在否則安裝它
* 新增root權限用戶"admin"並設定密碼為"admin"純文字

## 設定外部弱點
* 新增一個普通使用者"bob"，一個普通使用者
* 更改使用bob密碼為純文字"password"且不使用加密字串
* 在bob的主目錄中新增一個user.txt檔案，在檔案中寫入"flag is here"
## 設定內部漏洞
* 在root目錄中建立一個"root.txt"檔案，在檔案中寫入"root flag"
* 檢查sudo是否存在，若不存在則安裝sudo
* 製作一個cp提權漏洞，可以讓所有使用者使用並具有root權限
# 擬請AI作業流程
## 準備
* 使用繁體中文提供解釋
* 依步驟操作，使學生可以容易理解
* 在一開始提供操作說明

## 回復格式
```
#!/bin/bash

# 使用說明  
# 1. Copy this script to...
# 2. Open terminal...
# 3. Navigate to ...
# 4. chmod +x ...
# 5. Run the command...

# 靶機管理設定
echo "" 
echo "靶機管理設定"
useradd -m...
usermod -aG ...
echo... | chpasswd
service ssh ...

# 外部滲透設定
echo ""
echo "外部滲透設定"
useradd ...
service ssh ...


# 內部提權設定
echo ""
echo "內部提權設定"
if ...sudo...  

# 完成設定
echo ""
echo "完成設定"

```
