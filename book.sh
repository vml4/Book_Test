read -p "Enter the link " link

wget -O downloaded_book.txt $link --no-check-certificate  && cat downloaded_book.txt | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | tr ' ' '\n' | grep -v '^$' | sort | uniq -c | sort -nr | head -n 10
