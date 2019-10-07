###################################################################
#                                                                 #
#         RUN CLAM IN BULK AND CALCULATE                          #
#         TEMPORAL UNCERTAINTY FOR EACH SAMPLE                    #
#                                                                 #    
#                                                                 #        
#                  Suzette Flantua                                #    
#                   October 2019                                  #  
#                                                                 #
###################################################################

#### ONLINE LINKS

# Publication
# Flantua et al. 2016 Clim. Past, 12, 387–414
# https://www.clim-past.net/12/387/2016/

# figshare
#https://figshare.com/articles/Star_Classification_System_for_Age_Models/2069722/

# clam - classic age-depth modelling
# http://www.chrono.qub.ac.uk/blaauw/clam.html


# ---------------------------------------------------------------- 

install.packages("clam") 
library(clam)

# ---------------------------------------------------------------- 

# call clam
source("Clam.R")

# call code for the star classification system (Flantua et al. 2016)
source ("StarClassification_AgeModels.R")

# ---------------------------------------------------------------- 

#### run clam for individual records
# output: 1 age model with linear interpolation and 1 with spline (in case of sufficient control points)
# output: star classification indicating temporal uncertainy of each sample

Agemodel.stars("0310_CTY2", cc=3, smooth=0.2)

# ---------------------------------------------------------------- 

#### run clam for several records
# output: 1 age model with linear interpolation and 1 with spline (in case of sufficient control points)
# output: star classification indicating temporal uncertainy of each sample

# provide age model parameters in "script_per_agemodel.R"
source ("script_per_agemodel.R")


