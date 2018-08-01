#########################################
###   Diferentes usos básicos de la   ###
###     estructura de control if      ###
###      <Amadeo Guzmán c.>           ###
#########################################

'la construcción de la estructura IF regresa un valor, que puede, si se quiere, 
ser asignado a una variable o utilizado de otras maneras. Los siguientes ejemplos 
muestran la sintaxis y el uso de estas construcciones'

aa <- 16


#--------------------
### if {base} en R
#--------------------
if(aa > 15) 
  print("Mayor a 15")

if(aa > 15) print("Mayor a 15")

if(aa > 15) 100 #para devolver un valor si se cumple la condición

#el resultado se puede guardar en un objeto
x1 <- if(aa > 15) 100
x1


#------------------------------------------------------------
### if similar a otros lengusjes de programación {snippet}
#------------------------------------------------------------
#imprimir un msj
if (aa > 15) {
  print("Es un numero....") #respuesta compuesta
  print("Mayor a 15")
}

#devolver un valor
if (aa > 15) {
  100
}

#tambien se puede guardar en un objeto o vector
z1 <- if (aa > 15) {
  100
}

z1


#----------------
### if + else
#---------------
aa <- 16
#clasificación en 2 categorías
if (aa <= 10) {
  print("RANGO MENOR")
} else{
  print("RANGO MAYOR")
}

#clasificación en 3 categorías
if (aa <= 10) {
  print("RANGO MENOR")
} else if(aa > 10 && aa <= 20){
  print("RANGO MEDIO")
  print("Rango de valores normales")
} else{             #el 3er. bloque de instrucciones se ejecuta si nose cumplen las condiciones anteriores
  print("RANGO MAYOR")
}

