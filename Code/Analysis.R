#1 Clear environment, console, and plots
#2 Load packages 
#3 Dynamic path
#4 Clean data 
#5 Figure 
#6 Table


#1 Clear environment, console, and plots
    rm(list=ls()); cat("\014"); graphics.off()


#2 Load packages
    pkgs=c('this.path',  #dynamic folder references # nolint
           'rio',        #import data (xlsx, sav, csv, ...)
           'mgcv',       #GAM models
           'plotrix',    #text with background in graph
           'sandwich',   #robust SE
           'lmtest')     #robust SE
    missing=pkgs[!pkgs %in% rownames(installed.packages())]
    if (length(missing)) install.packages(missing, repos='https://cloud.r-project.org')
    invisible(lapply(pkgs, library, character.only=TRUE))


#3 Dynamic path
  RB=dirname(this.dir())
  raw_path=paste0(RB,"/Data/Raw/")
  clean_path=paste0(RB,"/Data/Clean/")
  fig_path=paste0(RB,"/Output/Figures/")
  table_path=paste0(RB,"/Output/Tables/")

  fp=file.path(raw_path, 'Cancer Medicine Approvals.xlsx')
  df=rio::import(fp)


#4 Clean data 


#5 Figure 


#6 Table