#!/bin/bash

# Download specific JW.org PDFs
# Using direct publication links from jw.org

declare -A pdfs=(
    ["Walk_Courageously_With_God"]="https://download-a.jw.org/files/media_books/w7_E.pdf"
    ["2024_Service_Year_Report"]="https://download-a.jw.org/files/media_books/s1_E.pdf"
    ["Scriptures_for_Christian_Living"]="https://download-a.jw.org/files/media_books/w11_E.pdf"
    ["Theocratic_Ministry_School_Guidebook"]="https://download-a.jw.org/files/media_books/w55_E.pdf"
    ["Watchtower_Study_Feb_2026"]="https://download-a.jw.org/files/media_magazines/w_E_202602.pdf"
)

for name in "${!pdfs[@]}"; do
    url="${pdfs[$name]}"
    echo "Downloading $name..."
    curl -L -o "${name}.pdf" "$url" 2>&1 | grep -E "warning|error|100"
done

echo "Downloads complete."
ls -lh *.pdf
