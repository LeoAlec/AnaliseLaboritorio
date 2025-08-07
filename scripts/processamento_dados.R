library(here)

dados <- data.frame(
  Sobrenadante = rep(c("Lactobacillus crispatus", "Lactobacillus crispatus", "Lactobacillus rhamnosus", "Lactobacillus rhamnosus"), each = 15),
  Duplicata = rep(c("1", "2"), times = 2, each = 15),
  Data = rep(as.Date(c("2025-04-24", "2025-04-30", "2025-05-16")), each = 5, times = 4),
  Tratamento = rep(c("Controle", "Veículo", "1,25%", "10%", "25%"), times = 12),
  Vivas = c(
    188, 110, 91, 134, 45, 137, 59, 85, 74, 73, 224, 165, 181, 139, 102,
    108, 122, 91, 95, 62, 63, 59, 97, 102, 79, 128, 129, 145, 144, 49,
    188, 110, 65, 66, 29, 137, 59, 103, 47, 12, 224, 165, 139, 82, 40,
    108, 122, 137, 42, 47, 63, 59, 70, 68, 14, 128, 129, 188, 104, 23
  ),
  Mortas = c(
    38, 38, 27, 42, 55, 45, 23, 52, 53, 59, 54, 39, 58, 82, 137,
    22, 35, 38, 46, 68, 31, 23, 44, 55, 41, 31, 51, 76, 80, 80,
    38, 38, 45, 57, 30, 45, 23, 50, 44, 35, 54, 39, 82, 121, 79,
    22, 35, 65, 27, 69, 31, 23, 59, 64, 64, 31, 51, 76, 80, 54
  )
)

# Use a função here() para criar o caminho de forma segura
# here("dados", "dados_processados.rds") significa:
# "A partir da raiz do projeto, entre na pasta 'dados' e encontre 'dados_processados.rds'"
saveRDS(dados, file = here("dados", "dados_processados.rds"))

# Para verificar, você pode até imprimir o caminho que o 'here' gerou
print(paste("Arquivo salvo em:", here("dados", "dados_processados.rds")))
