########################################
# Teste 2c - INF-0612          
# Nome(s): 
########################################


dia <- c(01, 01, 02, 02, 02, 02, 03, 03, 03, 04, 04, 04, 05, 05, 06, 06, 06, 06, 07, 07, 07, 07, 07, 08, 08, 08, 08, 09, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15)

cidade <- c('Campinas', 'Vinhedo', 'Campinas', 'Limeira', 'Campinas', 'Vinhedo', 'Campinas', 'Vinhedo', 'Limeira', 'Campinas', 'Vinhedo', 'Limeira', 'Campinas', 'Vinhedo', 'Campinas', 'Vinhedo', 'Campinas', 'Vinhedo', 'Vinhedo', 'Campinas', 'Vinhedo', 'Vinhedo', 'Limeira', 'Limeira', 'Campinas', 'Vinhedo', 'Limeira', 'Campinas', 'Vinhedo', 'Campinas', 'Limeira', 'Vinhedo', 'Campinas', 'Vinhedo', 'Campinas', 'Limeira', 'Vinhedo', 'Limeira', 'Vinhedo', 'Campinas', 'Limeira', 'Vinhedo', 'Limeira', 'Campinas', 'Limeira', 'Limeira', 'Campinas', 'Campinas', 'Limeira', 'Limeira')

chuva <- c(0.15, 0.02, 0.01, 0.13, 0.12, 2.19, 1.11, 0.76, 2.98, 0.45, 2.63, 0.76, 0.38, 1.26, 2.57, 0.54, 9.87, 3.41, 2.96, 1.37, 6.78, 13.87, 0.11, 1.84, 12.19, 2.86, 11.99, 2.01, 2.32, 11.2, 0.48, 4.33, 13.32, 1.05, 0.56, 1.92, 1.81, 7.66, 2.93, 1.17, 0.7, 2.95, 0.37, 1.08, 1.31, 3.22, 0.49, 1.86, 2.3, 7.65)


## DICA:
## Dado um data frame df[], voce pode remover linhas repetidas considerando duas colunas "c" e "d" 
## usando o comando df[!duplicated(df[,c('c', 'd')]),] (mantendo apenas a primeira ocorrencia) ou o
## comando df[!duplicated(df[,c('c', 'd')], fromLast = TRUE),] (mantendo apenas a ultima ocorrencia)

# 1
df <- data.frame(dia, cidade, chuva)

# 2
df <- df[!duplicated(df[,c('dia', 'cidade')], fromLast = TRUE),]

# 3
acumCamp <- sum(df[df$cidade == 'Campinas',3])
acumLim <- sum(df[df$cidade == 'Limeira',3])
acumVin <- sum(df[df$cidade == 'Vinhedo',3])

# 4 - entendi errado, o seu esta correto
dmaxCamp <- max(df$dia[df$cidade == 'Campinas',3])
dmaxLim <- max(df$dia[df$cidade == 'Limeira',3])
dmaxVin <- max(df$dia[df$cidade == 'Vinhedo',3])

# 5 - entendi errado, o seu esta correto
dminCamp <- min(df$dia[df$cidade == 'Campinas',3])
dminLim <- min(df$dia[df$cidade == 'Limeira',3])
dminVin <- min(df$dia[df$cidade == 'Vinhedo',3])

