
Mix <- read.csv("Ekstrakt_zoledziowy.csv",
                header = T, sep = ",", check.names = F)
# tu miejsce przed funkcja by dowolnie manipulowac procentowym skladem (2 kolumna)
# poszczegolnych skladnikow zanim powstanie koncowy produkt
Ekstrakt_zoledziowy <- function(Ile,Produkt){
  Produkt[1,3] <- Produkt[1,2]*Ile
  Produkt[2,3] <- Produkt[2,2]*Ile
  Produkt <- Produkt[rowSums(Produkt[,c(2,3)])>0,]
  write.csv(Produkt,"Ekstrakt_zoledziowy_produkt.csv", row.names = F)
  return(Produkt)
}
