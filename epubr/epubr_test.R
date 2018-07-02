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
epub(file, fields = c("title", "creator"))

#if title not in
# Error: Column `title` must be a 1d atomic vector or a list
# In addition: Warning message:
#   Unknown or uninitialised column: 'title'. 


dracula_drop <- epub(file, drop_sections = "^item")

dracula_drop_ex <- epub(file, fields = c("title", "creator"), drop_sections = "^cov")

dracula$data[[1]]
dracula_drop$data[[1]]
dracula_drop_ex$data[[1]]





#pipe-able
epub_meta(file) %>% 
  mutate_all(toupper)


#extracting text data
dracula_text <- dracula$data[[1]] 


#merging to one text vector 
full_text_vector <- paste(dracula_text$text, collapse = '')





#OTHER EXAMPLES

HTGAJ <- epub("epubr/testfiles/HTGAJ.epub")
HTGAJ_text <- HTGAJ$data[[1]]
HTGAJ_text$text[4]



powershell <- epub("epubr/testfiles/creating-html-reports-in-powershell.epub")
powershell_text <- powershell$data[[1]]
powershell_text$text[2]



#error message in case something goes wrong in filename or extension
# Error in if (grepl("<|>", x)) { : argument is of length zero
#   In addition: Warning message:
#     In utils::unzip(file, exdir = exdir) : error 1 in extracting from zip file


#VECTOR OF EXAMPLES

vector <- c("epubr/testfiles/dracula.epub", "epubr/testfiles/HTGAJ.epub", "epubr/testfiles/creating-html-reports-in-powershell.epub")
vectordata <- epub(vector)
vectordata$data
