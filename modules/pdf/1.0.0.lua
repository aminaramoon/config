

local pdfJoin = 'echo "pdftk file1.pdf file2.pdf cat output newFile.pdf"'
set_shell_function("pdf_join", pdfJoin)
set_shell_function("pdf_split", 'echo "pdftk myDocument.pdf cat 1-9 26-end output removedPages.pdf"')
set_shell_function("pdf_attach", 'echo "pdftk html_tidy.pdf attach_files command_ref.html to_page 24 output html_tidy_book.pdf"')
set_shell_function("pdf_pswd", 'echo "pdftk sales_report.pdf output SalesReport.pdf user_pw PROMPT"')
