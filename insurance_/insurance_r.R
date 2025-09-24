df = read.csv('insurance.csv')

#Exibição de dados
head(df) # Primeiras Linhas
tail(df) # Ultimas Linhas

#Resumo estatisco de todas as colunas do dataset
summary(df)

hist(df$age)

hist(df$charges)

boxplot(df$bmi)
