
Mix <- read.csv("Repentent_odstraszajacy_szkodniki_roslin.csv",
                header = T, sep = ",", check.names = F)
# tu miejsce przed funkcja by dowolnie manipulowac procentowym skladem (2 kolumna)
# poszczegolnych skladnikow zanim powstanie koncowy produkt
Repentent_odstraszajacy_szkodniki_roslin <- function(Ile,Produkt){
  Produkt[1,3] <- Produkt[1,2]*Ile
  Produkt[2,3] <- Produkt[2,2]*Ile
  Produkt[3,3] <- Produkt[3,2]*Ile
  Produkt <- Produkt[rowSums(Produkt[,c(2,3)])>0,]
  write.csv(Produkt,"Repentent_odstraszajacy_szkodniki_roslin_produkt.csv", row.names = F)
  return(Produkt)
}
