library(epubr)
library(dplyr)


#SHARED EXAMPLE
file <- system.file("dracula.epub", package = "epubr")
dracula <- epub(file)



### FUNCTIONS TEST ####


#epub_meta
dracula_meta <- epub_meta(file)

epub_meta(file) %>% 
  mutate_all(toupper) %>% 
  select(identifier)



#epub_unzip
unziptest <- epub_unzip(file)
unziptest <- epub_unzip(file, exdir = "./epubr/unzip")



#first_nchar
firstchar <- first_nchar(file)
firstchar <- first_nchar(file, n=10)


#epub
dracula <- epub(file)



#pipe-able
epub_meta(file) %>% 
  mutate_all(toupper)


#extracting text
dracula_text <- dracula$data[[1]] #gives new df with the actual text
dracula_text$text[1]

#getting all text
full_text_vector <- paste(dracula_text$text, collapse = '')





#OTHER EXAMPLES

HTGAJ <- epub("epubr/testfiles/HTGAJ.epub")
HTGAJ_text <- HTGAJ$data[[1]]
HTGAJ_text$text[4]



powershell <- epub("epubr/testfiles/creating-html-reports-in-powershell.epub")
powershell_text <- powershell$data[[1]]
powershell_text$text[2]




#VECTOR OF EXAMPLES

vector <- c("epubr/testfiles/dracula.epub", "epubr/testfiles/HTGAJ.epub", "epubr/testfiles/creating-html-reports-in-powershell.epub")
vectordata <- epub(vector)
vectordata$data
