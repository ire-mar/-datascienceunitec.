pollutantvector <- function(directory,pollutant,id=1:332,p)
{
  #creating an empty table.
  result <-c(Date=character(),sulfate=numeric(),nitrate=numeric(),Id=integer())
  #A check to verify if the pollutant is sulfate or nitrate.
  if((pollutant !="sulfate") && (pollutant !="nitrate"))
  {
    print(paste("Error: input pollutant",pollutant,"is invaild. Should be sulfate or nitrate"))
    return()
  }
  #checking to verify if the id is between 1 and 332.
  if(1>min(id) | 332<max(id))
  {
    print("Error: id value should between 1-332")
    return()
  }
  #looping through each given monitor id.
  for(i in id)
  {
    #getting the files.
    file_path <- paste(getwd(),"/",directory,"/",sprintf("%03d",i),".csv",sep = "")
    #getting the table
    table <- read.csv(file_path, header=T,sep=",",na.strings=c("NA","NaN", " "))
    #removing the NA, filtering the pollutant and getting those rows which are greater than P
    
    updated_table <-apply(table[pollutant], 1, function(x) (!is.na(x)&&(x > p)))
    data <-table[updated_table,]
    result<-rbind(result,data)
  }
  #returning the values of table which are more than p
  return(result)
}


