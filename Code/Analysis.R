#1 Load pkgs
#2 Dynamic Path

#Clean env


#1 Load pkgs
    pkgs=c('this.path',  #dynamic folder references
           'rio',        #import data (xlsx, sav, csv, ...)
           'mgcv',       #GAM models
           'plotrix',    #text with background in graph
           'sandwich',   #robust SE
           'lmtest')     #robust SE
    missing=pkgs[!pkgs %in% rownames(installed.packages())]
    if (length(missing)) install.packages(missing, repos='https://cloud.r-project.org')
    invisible(lapply(pkgs, library, character.only=TRUE))

#Clear console, environment, and plot area
    rm(list=ls()); cat("\014"); graphics.off()


#2 Dynamic Paths
  RB=dirname(this.dir())
  raw_path=paste0(RB,"/Data/Raw/")
  clean_path=paste0(RB,"/Data/Clean/")
  fig_path=paste0(RB,"/Output/Figures/")
  table_path=paste0(RB,"/Output/Tables/")

  fp=file.path(raw_path, 'Cancer Medicine Approvals.xlsx')
  df=rio::import(fp)


#3 