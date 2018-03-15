########################################
# Teste 2c - INF-0612          
# Nome(s): Rafael Fernando Ribeiro
#          Thiago Gomes Marçal Pereira
########################################


dia <- c(01, 01, 02, 02, 02, 02, 03, 03, 03, 04, 04, 04, 05, 05, 06, 06, 06, 06, 07, 07, 07, 07, 07, 08, 08, 08, 08, 09, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15)

cidade <- c('Campinas', 'Vinhedo', 'Campinas', 'Limeira', 'Campinas', 'Vinhedo', 'Campinas', 'Vinhedo', 'Limeira', 'Campinas', 'Vinhedo', 'Limeira', 'Campinas', 'Vinhedo', 'Campinas', 'Vinhedo', 'Campinas', 'Vinhedo', 'Vinhedo', 'Campinas', 'Vinhedo', 'Vinhedo', 'Limeira', 'Limeira', 'Campinas', 'Vinhedo', 'Limeira', 'Campinas', 'Vinhedo', 'Campinas', 'Limeira', 'Vinhedo', 'Campinas', 'Vinhedo', 'Campinas', 'Limeira', 'Vinhedo', 'Limeira', 'Vinhedo', 'Campinas', 'Limeira', 'Vinhedo', 'Limeira', 'Campinas', 'Limeira', 'Limeira', 'Campinas', 'Campinas', 'Limeira', 'Limeira')

chuva <- c(0.15, 0.02, 0.01, 0.13, 0.12, 2.19, 1.11, 0.76, 2.98, 0.45, 2.63, 0.76, 0.38, 1.26, 2.57, 0.54, 9.87, 3.41, 2.96, 1.37, 6.78, 13.87, 0.11, 1.84, 12.19, 2.86, 11.99, 2.01, 2.32, 11.2, 0.48, 4.33, 13.32, 1.05, 0.56, 1.92, 1.81, 7.66, 2.93, 1.17, 0.7, 2.95, 0.37, 1.08, 1.31, 3.22, 0.49, 1.86, 2.3, 7.65)


## DICA:
## Dado um data frame df[], voce pode remover linhas repetidas considerando duas colunas "c" e "d" 
## usando o comando df[!duplicated(df[,c('c', 'd')]),] (mantendo apenas a primeira ocorrencia) ou o
## comando df[!duplicated(df[,c('c', 'd')], fromLast = TRUE),] (mantendo apenas a ultima ocorrencia)

## Você deve criar um data frame utilizando os vetores fornecidos e, sempre que utilizar algum dado
## destes vetores, referir-se apenas a este data frame (ou seja, você só pode utilizar os vetores fornecidos para
##                                                   criar este data frame).
df <- data.frame("dia"=dia, "cidade"=cidade, "chuva"=chuva)
dfo <- data.frame("dia"=dia, "cidade"=cidade, "chuva"=chuva)

## Você deve remover do dataframe todas as linhas i tais que exista uma linha j com j > i e que
## os campos contendo dia e cidade sejam o mesmo em i e j.
df <- df[!duplicated(df[,c('dia', 'cidade')], fromLast = TRUE),]

## Salve nas variáveis “acumCamp”, “acumLim” e “acumVin” o total de chuvas observados nos 30 dias
## nas cidades cidades de Campinas, Limeira e Vinhedo, respectivamente.
acumCamp <- sum(df$chuva[df$cidade == "Campinas"])
acumLim <- sum(df$chuva[df$cidade == "Limeira"])
acumVin <- sum(df$chuva[df$cidade == "Vinhedo"])

## Você deve salvar nas variáveis “dmaxCamp”, “dmaxLim” e “dmaxVin” o dia do mês que mais choveu
## nas cidades de Campinas, Limeira e Vinhedo, respectivamente. Se existir mais de um dia com o valor máximo,
## você pode escolher qualquer um dos dias.
dmaxCamp <- ((df$dia[df$cidade == "Campinas"])[order(df$chuva[df$cidade == "Campinas"], decreasing = TRUE)])[1]
dmaxLim <- ((df$dia[df$cidade == "Limeira"])[order(df$chuva[df$cidade == "Limeira"], decreasing = TRUE)])[1]
dmaxVin <- ((df$dia[df$cidade == "Vinhedo"])[order(df$chuva[df$cidade == "Vinhedo"], decreasing = TRUE)])[1]

## Você deve salvar nas variáveis “dminCamp”, “dminLim” e “dminVin” o dia do mês que menos
## choveu nas cidades de Campinas, Limeira e Vinhedo, respectivamente. Se existir mais de um dia com o valor
## mínimo, você pode escolher qualquer um dos dias.
dminCamp <- ((df$dia[df$cidade == "Campinas"])[order(df$chuva[df$cidade == "Campinas"])])[1]
dminLim <- ((df$dia[df$cidade == "Limeira"])[order(df$chuva[df$cidade == "Limeira"])])[1]
dminVin <- ((df$dia[df$cidade == "Vinhedo"])[order(df$chuva[df$cidade == "Vinhedo"])])[1]
