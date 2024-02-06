getwd()
nuevo_dir<-"C:/Ejercicio1"
setwd (nuevo_dir)
if (file.exists(nuevo_dir)){
  cat ("Directorio creado correctamente:", nuevo_dir, "\n")
} else {
  cat ("Fallo al crear directorio:", nuevo_dir, "\n")
}

set.seed(123)

n_registros <-20

yacimiento<- sample(c("Yac1","Yac2","Yac3"), n_registros,replace=TRUE)
tipo_artefactos<- sample(c("Brazalete","Cuenta","Collar"), n_registros, replace=TRUE)
cantidad_artefactos <- sample(1:150, n_registros, replace= TRUE)

archaeological_data <-data.frame(
  yacimiento = yacimiento,
  tipo_artefacto = tipo_artefacto,
  cantidad_artefactos
)

