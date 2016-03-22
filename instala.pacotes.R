############################################################################
# carrega/Instala os pacotes de trabalho
############################################################################

instala.pacotes <- function(pacotes = NULL){
  # Se nao foram informados pacotes para carga
  if (is.null(pacotes)) {
    # Ejeta com mensagem de erro
    stop("Nao foram informados os pacotes para carga!")
  }
  
  # Varre os pacotes
  for(pacote in pacotes) {
    # Tenta carregar os pacotes
    if (!require(pacote, quietly = TRUE, warn.conflicts = FALSE, character.only = TRUE)) {
      # Instala os pacotes
      install.packages(pacote, quiet = TRUE, 
                       dependencies = TRUE);
      # Carrega os pacotes
      library(pacote, quietly = TRUE, 
              warn.conflicts = FALSE, 
              character.only = TRUE)
    }
  }

}
##
# Fim