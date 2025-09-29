# Hipotese de existencia de correlação entre Ensino superior e convocação de voluntária entre mesários em 2022?

# Instalação da biblioteca
install.packages("tidyverse")
install.packages("DescTools")
install.packages("ggstatsplot")

# Carregando Biblioteca
library(tidyverse)
library(DescTools)
library(ggstatsplot)

options(scipen = 999)

# ---- Dados

df = read.csv2("C:/Users/elnat/Downloads/convocacao_mesarios_2022/convocacao_mesarios_2022_BRASIL.csv")

# Explorando dados
glimpse(df)

# Total de Mesários
sum(df$QT_CONVOCADOS_PERFIL)

# Agregação

df %>%
  group_by(SG_UF) %>%
  summarise(Mulheres = sum(QT_CONVOCADOS_PERFIL[DS_GENERO = "FEMINIMO"]),
            Superior = sum(QT_CONVOCADOS_PERFIL[DS_GRAU_INSTRUCAO = "SUPERIOR COMPLETO"]),
            Voluntario = sum(QT_CONVOCADOS_PERFIL[ST_VOLUNTARIO = " Volunt\xe1rias e volunt\xe1rios"]),
            Solteiros = sum(QT_CONVOCADOS_PERFIL[DS_ESTADO_CIVIL = "SOLTEIRO"]))

