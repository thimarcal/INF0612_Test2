########################################
# Teste 2a - INF-0612          
# Nome(s): Rafael Fernando Ribeiro
#          Thiago Gomes Marçal Pereira
########################################

## Os vetores C, L e V representam os produtos distribuidos nas cidades de Campinas, Limeira e Vinhedo, respectivamente.

C <- c("Xampu", "Sabonete", "Arroz", "Chocolate", "Leite", "Refrigerante", "Queijo", "Suco", "Vinho", "Cerveja")
L <- c("Leite", "Cerveja", "Arroz", "Chocolate")
V <- c("Sabonete", "Detergente", "Refrigerante", "Carne", "Vinho", "Chocolate", "Papel", "Leite", "Iogurte")


## Perguntas:
## Quais os produtos que sao vendidos em Campinas, mas nao sao vendidos em Limeira?
setdiff(C, L)

## Quais os produtos que sao vendidos em Vinhedo, mas nao sao vendidos em Campinas?
setdiff(V, C)

## Quais os produtos que sao vendidos em pelo menos uma cidade?
union(union(C, V), L)

## Quais os produtos que sao vendidos em todas as cidades?
intersect(intersect(C,V),L)

## Se a filial de Limeira parar a distribuicao de produtos, a filial de Campinas 
## possui todos os itens necessarios para atender a demanda de Limeira? 
setequal(intersect(L, C), L)


