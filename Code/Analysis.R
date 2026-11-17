#1 Load pkgs
#2 Dynamic Paths
#3 Data for prediction, sample means, and AI 1-7
#4 Function to make plot of fitted values
#5 Reproduce result in the paper


#Clean env


#1 Load pkgs
  library('groundhog')
    pkgs=c('this.path',  #dynamic folder references
           'rio',        #import data (xlsx, sav, csv, ...)
           'mgcv',       #GAM models
           'plotrix',    #text with background in graph
           'sandwich',   #robust SE
           'lmtest')     #robust SE

#Clear console, environment, and plot area
    sohn::clear()


#2 Dynamic Paths
  RB=dirname(this.dir())
  raw_path=paste0(RB,"/Data/Raw/")
  clean_path=paste0(RB,"/Data/Clean/")
  fig_path=paste0(RB,"/Output/Figures/")
  table_path=paste0(RB,"/Output/Tables/")

  fp=file.path(raw_path, 'Cancer Medicine Approvals.xlsx')
  df=rio::import(fp)


#3 Data for prediction, sample means, and AI 1-7


#4 Function to make plot of fitted values


#5 Reproduce result in the paper
