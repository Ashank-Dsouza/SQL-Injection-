install.packages("RMySQL")
library(RMySQL)


mydb = dbConnect(MySQL(), 
                 user='root',
                 password='3216054regulas',
                 dbname='Users',
                 host='localhost')

name <- readline(prompt="Enter name: ")

print(name)

Select_command <- "select * from Information Where Name = "
  
if(grep("[:alpha:]", name)){
  
    txtSql  <- paste(Select_command, name, sep ="")
    
    print(txtSql)
    
    rs = dbSendQuery(mydb, txtSql)
    
    data = fetch(rs, n=-1)
    print(data) 
}
  



