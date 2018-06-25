library(epubr)


file <- system.file("testfiles/HTGAJ.epub", package = "epubr")
HTGAJ <- epub(file)
  
#error
#Error in if (grepl("<|>", x)) { : argument is of length zero
# In addition: Warning message:
# In utils::unzip(file, exdir = exdir) : error 1 in extracting from zip file