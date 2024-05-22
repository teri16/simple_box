# 目的
* 我有一個bash script boxset.sh 可以用來設置ubuntu機器

# 需求
* 製作一個dockerfile 來完成目的
## 說明
* 使用繁體中文說明本檔案使用方式
## 基底容器
* unbuntu 輕量化image

## 初始化
* 把boxset.sh複製到根目錄
* chmod +x boxset.sh
* 執行 boxset.sh 來完成機器設定

## 起始程序
* 開啟機器時啟用ssh服務
* 開啟22port
* 使機器可以使用網路

# AI回復
## 注意事項
* 依照步驟呈現，方便學生學習使用
* 註釋都使用繁體中文撰寫
## 回復格式
```
# 使用說明
# 1. 建立一個Dockerfile並複製以下內容到該文件中
# 2. 在終端中導航到Dockerfile所在的目錄
# 3. 使用 docker build 指令建立映像檔
# 4. 建立容器後執行初始化指令

# 基底容器
FROM ubuntu:latest

# 初始化
# 把boxset.sh複製到根目錄
COPY boxset.sh /boxset.sh
# 設置boxset.sh為可執行權限
RUN chmod +x /boxset.sh
# 執行boxset.sh完成機器設定
RUN /boxset.sh

# 起始程序
# 開啟機器時啟用SSH服務
# 開啟22端口
# 使機器可以使用網路
CMD service ssh start && /bin/bash


```



