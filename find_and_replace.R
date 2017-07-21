library("readr", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")

dictionary <- c("7592","9372")
names <- c("gb73","rd32")

infile <- read_file("example_file")

counter <- 1
while(counter <= length(dictionary)){
  print(counter)
  print(names[counter])
  outfile <- gsub(dictionary[counter],paste(dictionary[counter],names[counter],sep=" "),infile)
  counter <- sum(counter, 1)
}  

fileConn<-file("output.txt")
writeLines(outfile, fileConn)
close(fileConn)
