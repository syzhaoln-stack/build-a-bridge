# Build script for 《请把手弄脏》
# Requirements: TeX Live 2024+ with XeLaTeX, biber, minted
# Shell: Git Bash or WSL

#!/bin/bash
set -e

echo "=== 编译《请把手弄脏》==="

# Clean aux files
echo "[1/4] 清理旧文件..."
rm -f *.aux *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml *.synctex.gz *.idx *.ind *.ilg *.lof *.lot 2>/dev/null

# First pass: XeLaTeX
echo "[2/4] XeLaTeX 第一遍..."
xelatex -shell-escape -interaction=nonstopmode main.tex

# Bibliography
echo "[3/4] Biber 参考文献..."
biber main

# Second pass: XeLaTeX (resolve references)
echo "[4/4] XeLaTeX 第二遍 + 第三遍..."
xelatex -shell-escape -interaction=nonstopmode main.tex
xelatex -shell-escape -interaction=nonstopmode main.tex

echo ""
echo "=== 编译完成 ==="
echo "PDF: main.pdf"
ls -lh main.pdf