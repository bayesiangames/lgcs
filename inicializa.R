############################################################################
# Configurações padrões
############################################################################

inicializa <- function(){
  # Limpa memoria
  rm(list = ls())

  # carrega/Instala os pacotes de trabalho
  source("instala.pacotes.R")
  pacotes <- c("GameTheory", "ggplot2", "scales", "ggmap")
  instala.pacotes(pacotes)
}
# Fim
##