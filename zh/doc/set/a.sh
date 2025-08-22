#!/bin/bash

# --- 请确保您在正确的目录下运行此脚本 ---

# 遍历当前目录下的所有 .md 文件
# shopt -s nullglob 可以在没有 .md 文件时避免错误
shopt -s nullglob
for file in ./*.md
do
  # 检查文件是否存在且可写
  if [ -f "$file" ] && [ -w "$file" ]; then
    echo "正在处理文件: $file"
    
    # 使用 sed 命令删除任何 **包含** 指定字符串的行
    # 这是最直接和最不容易出错的方法
    #
    # 解释:
    # -i ''      : 在 macOS 上原地修改文件，不创建备份。
    # '/.../d'   : 这是 sed 的删除命令结构。
    # \/\/ ... : 我们需要用反斜杠 \ 来转义内容中的 /，
    #             告诉 sed 这只是普通字符，不是命令分隔符。
    
    sed -i '' '/\/\/ it.res is IDOCmdSetResponseModel/d' "$file"
    
    echo "处理完成: $file"
  else
    echo "跳过文件 (不存在或不可写): $file"
  fi
done

echo "脚本执行完毕。"