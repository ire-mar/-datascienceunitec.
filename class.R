bye=function(num=1){
  txt<-"Bye text!\n"
  for(i in seq_len(num)){
    cat(txt)
  }
  }