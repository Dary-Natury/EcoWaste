#
Mix <- read.csv("Mydlo_zoledziowe.csv", header = T, sep = ",", check.names = F)
# tu miejsce przed funkcja by dowolnie manipulowac procentowym skladem (2 kolumna)
# poszczegolnych skladnikow zanim powstanie koncowy produkt
Mydlo_zoledziowe <- function(Ile,Produkt){
Produkt[1,3] <- Produkt[1,2]*Ile
Produkt[2,3] <- Produkt[2,2]*Ile
Produkt[3,3] <- Produkt[3,2]*Ile
Produkt[4,3] <- Produkt[4,2]*Ile
Produkt[5,3] <- Produkt[5,2]*Ile
Produkt[6,3] <- Produkt[6,2]*Ile
Produkt[7,3] <- Produkt[7,2]*Ile
Produkt <- Produkt[rowSums(Produkt[,c(2,3)])>0,]
write.csv(Produkt,"Mydlo_zoledziowe_produkt.csv", row.names = F)
return(Produkt)
}
