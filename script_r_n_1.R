

#_____________________________        Explora��o de Dados no R - Script n� 1         ____________________________


#_______________     An�lises estatisticas descritivas b�sicas no Dataframe     ___________________



#Descri��o:


# Nesse projeto fiz an�lises estatistica descritivas b�sicas em um dataset que contem dados de "Pre�os de vendas de carros usados".


# Fonte dos dados: https://www.kaggle.com/ankits29/used-car-price-data

#____________________________________________________________________________
#____________________________________________________________________________


###############################################################################
###############################################################################


#__________________     Objetivos do projeto:


#  1 - Identificar a dimens�o do dataset (n�mero de linhas e colunas);

#  2 - Descrever a estrutura dos dados do dataset (tipos das vari�veis);

#  3 - Identificar se h� ausencia de valores no dataset.


#__________________     Pacotes utilizados no projeto:


# - visdat


##Observa��o: no pr�ximo projeto irei continuar as an�lises desse dataframe, o qual irei focar nas an�lises explorat�rias para cada vari�vel.


#*Script desenvolvido por Lucas Andrei Campos-Silva


#_________________________________________________________________________
#_________________________________________________________________________


#_______________             In�cio do Projeto


#Carregando os dados:

setwd("C:/Users/User/OneDrive/Kaggle/NOVO")

(carros = read.csv("car_data.csv", header = TRUE))

#Checando os nomes das vari�veis
names(carros)

#Vendo as 10 primeiras linhas
head(carros, 10)


#_______________________________________________________________________________________


#  1 - Identificar a dimens�o do Dataframe (n�mero de linhas e colunas)

#Dimens�o dos dados (Linhas / Colunas)
dim(carros)

#N�mero de linhas
nrow(carros)

#N�mero de colunas
ncol(carros) 


#_______________________________________________________________________________________


#  2 - Descrever a estrutura dos dados

#Checando a estrutura dos dados - Valores descritivos
str(carros)

#Checando a estrutura dos dados - Gr�fico
library(visdat)
vis_dat(carros)


#_______________________________________________________________________________________


#  3 - Identificar se h� ausencia de valores
colSums(is.na(carros))

##Checando se h� aus�ncia de dados - Gr�fico
vis_miss(carros)


#_______________________________________________________________________________________