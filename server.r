shinyServer(function(input,output){
  output$svgui <- renderUI({
    original <- paste(readLines("tiger.svg"),"\n",sep="")
    front <- paste(paste(original[2:3],"\n",sep=""),collapse="")
    mid <- paste("<script>", jscode, "</script>\n",sep="")
    end <- paste(paste(original[-(1:4)],sep=""),collapse="")
    out <- HTML(paste(front,mid,end,sep=""))
    write(out,"out.svg")
    out
  })
})
