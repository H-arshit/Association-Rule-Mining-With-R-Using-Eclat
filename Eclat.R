setwd("~/Desktop/ML GIT/ARL/Eclat/")

library(arules)



dataset <- read.transactions("Market_Basket_Optimisation.csv" , sep = "," , rm.duplicates = T)


rules <- eclat(data = dataset , parameter = list(support = 0.003 , minlen = 2) )


inspect(rules)


inspect(sort(rules, by = 'support')[1:10])