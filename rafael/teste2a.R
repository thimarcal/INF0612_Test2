########################################
# Teste 2a - INF-0612          
# Nome(s): Rafael Fernando Ribeiro
########################################

## Os vetores C, L e V representam os produtos distribuidos nas cidades de Campinas, Limeira e Vinhedo, respectivamente.

C <- c("Xampu", "Sabonete", "Arroz", "Chocolate", "Leite", "Refrigerante", "Queijo", "Suco", "Vinho", "Cerveja")
L <- c("Leite", "Cerveja", "Arroz", "Chocolate")
V <- c("Sabonete", "Detergente", "Refrigerante", "Carne", "Vinho", "Chocolate", "Papel", "Leite", "Iogurte")


## Perguntas:
## Quais os produtos que sao vendidos em Campinas, mas nao sao vendidos em Limeira?
# 1
setdiff(C,L)

## Quais os produtos que sao vendidos em Vinhedo, mas nao sao vendidos em Campinas?
# 2
setdiff(V,C)

## Quais os produtos que sao vendidos em pelo menos uma cidade?
# 3
unique(c(C,V,L))

## Quais os produtos que sao vendidos em todas as cidades?
# 4
unique(c(C,V,L)[duplicated(c(C,V,L))])

## Se a filial de Limeira parar a distribuicao de produtos, a filial de Campinas 
## possui todos os itens necessarios para atender a demanda de Limeira? 
# 5
setequal(intersect(L,C),L)
