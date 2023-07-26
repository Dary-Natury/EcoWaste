#
Produkt <- read.csv("Naturalna_zawieszka_zapachowa.csv", header = T, sep = ",", check.names = F)

# tu miejsce przed funkcja by dowolnie manipulowac procentowym skladem (2 kolumna)
# poszczegolnych skladnikow zanim powstanie koncowy produkt
Mix <- function(Ile,Produkt){
  Produkt$`Zawartosc (kg)` <- Produkt[,2]*Ile
  Produkt <- Produkt[rowSums(Produkt[,c(2,3)])>0,]
  write.csv(Produkt,"Naturalna_zawieszka_zapachowa_produkt.csv", row.names = F)
  return(Produkt)
}

