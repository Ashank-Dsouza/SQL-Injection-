install.packages("RMySQL")
library(RMySQL)


mydb = dbConnect(MySQL(), user='root',
                 password='3216054regulas',
                 dbname='Users',
                 host='localhost')

name <- readline(prompt="Enter name: ")

print(name)

letters_only <- function(x) !grepl("[^A-Za-z]", x)

if(letters_only(name)){
  Select_command <- "select * from Information Where Name = "
  
  nameField <- paste("'", name, "'", sep = "")
  
  txtSql  <- paste(Select_command, nameField, sep ="")
  
  print(txtSql)
  
  rs = dbSendQuery(mydb, txtSql)
  
  data = fetch(rs, n=-1)
  print(data) 
  
}



