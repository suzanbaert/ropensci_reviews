library(epubr)


#SHARED EXAMPLE
file <- system.file("dracula.epub", package = "epubr")


#functions test
dracula_meta <- epub_meta(file)
dracula <- epub(file)

#extracting text
dracula_text <- dracula$data[[1]] #gives new df with the actual text
dracula_text$text[1]




#OTHER EXAMPLES

HTGAJ <- epub("epubr/testfiles/HTGAJ.epub")




#VECTOR OF EXAMPLES





