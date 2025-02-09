# Libraries ---------------------------------------------------------------
library(ggplot2)

# Users -------------------------------------------------------------------
# Include here the names of the secret Santa people
givers <- c("Jon Doe", "Joane Doe", "Doe Jon", "Doe Joane")

takers <- givers

# Attribution logic ------------------------------------------------------
for (i in givers) {
  j <- sample(takers[takers != i], 1)
  takers <- takers[takers != j]
  code <- qrcode::qr_code(as.character(j))
  png(filename = paste0(i, ".png"))
  plot(code)
  dev.off()
}
