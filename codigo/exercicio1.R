library(readxl)
df.ex1 <- read_excel("./dados/exercicio1.xls",skip = 1, col_names = "tx.juros", col_types = c("numeric"))
ex1.media <- mean(df.ex1$tx.juros)
print(paste("Média:", ex1.media))
ex1.mediana = median(df.ex1$tx.juros)
print(paste("Médiana:", ex1.mediana))
ex1_desviop = round(sd(df.ex1$tx.juros),6)
print(paste("Desvio Padrão:", ex1_desviop))
ex1_varianca <- round(var(df.ex1$tx.juros),6)
print(paste("Variância:", ex1_varianca))
ex1.minimo <- min(df.ex1$tx.juros)
print(paste("Valor mínimo:", ex1.minimo))
ex1.maximo <- max(df.ex1$tx.juros)
print(paste("Valor máximo:", ex1.maximo))
ex1.quartis <- round(quantile(df.ex1$tx.juros),2)
q1 <- ex1.quartis[2]
print(paste("Q1:", q1))
q3 <- ex1.quartis[4]
print(paste("Q3:", q3))
# O melhor gráfico para representar os valores é o do "boxplot"!
boxplot(df.ex1)
# Uma versão mais "sofisticada"!
boxplot(df.ex1$tx.juros,
        main = "Taxas de Juros Recebidas em Ações",
        xlab = "Taxas de Juros",
        ylab = "Ações",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)


#Outro gráfico
plot(df.ex1$tx.juros, main = "Taxas de Juros Recebidas em Ações",
     xlab = "Número da Ação",
     ylab = "Taxa de Juros")
barplot(table(df.ex1$tx.juros))


plot(df.ex1$tx.juros)
hist(df.ex1$tx.juros)
lines(df.ex1$tx.juros)

stripchart(df.ex1$tx.juros, vertical = T)
