############################################################################
# Configurações padrões
############################################################################

inicializa <- function(){
  # Limpa memoria
  rm(list = ls())

  # carrega/Instala os pacotes de trabalho
  source("instala.pacotes.R")
  pacotes <- c("GameTheory")
  instala.pacotes(pacotes)
}
# Fim
##