##########################################
###       Estructuras de Control       ###
###     Ciclos -> for(), while ()      ###
###    interacción con if/break/next   ###
###        <Amadeo Guzmán C.>          ###
##########################################


'El lenguaje cuenta con varios tipos de ciclos o repeticiones, a saber: 
- Repeticiones por un número determinado de veces. 
- Repeticiones mientras se cumple una condición.
- Repeticiones infinitas.'


#-------------------------------------------------------------
### Repeticiones por un número determinado de veces -> for()
#-------------------------------------------------------------
#repeticiones por un numero EXPLICITO de veces 1:6
for (i in 1:6) {
  print(paste("N°:", i))
}

# 1:3
for (i in 1:3) {
  print(paste("N°:", i))
}

#repeticiones por un numero de veces, en forma IMPLICITA en la construcción for()
datos <- c(1,2,3,4,5,6)

for (i in 1:length(datos)) {
  print(i)
}


#------------------------------------------------------
### Repeticiones mientras se cumple una condición 
#------------------------------------------------------
# while()
i <- 1                           # es necesario definir un vector inicial
while (i <= 4) {                 # mientras se cumpla la condición i <= 4
  print(datos[i])                # impimir si el elemento cumple la condición
  i <- i + 1                     # al final de cada ciclo subir 1 nivel i+1, para acumular los resultados
}

#opción con for () + if()
for (i in 1:length(datos)) {     # aplicar el ciclo desde 1, hasta el largo del vector datos
  if (datos[i] <= 4) {           # condicón
    print(datos[i])              # imprimir cada elemento que cumple con la condición
      }
}


#for () + if() + else{}
for (i in 1:length(datos)) {   # aplicar el ciclo desde 1, hasta el largo del vector datos
  if (datos[i] <= 4) {           # condición
    print(datos[i])              # imprimir cada elemento que cumple con la condición
  } else{
    print("no cumple condición")  # si no cumple con la condición imprimir este mensaje
  }
}



#--------------------------------------------------------------
### Interrupción del flujo normal de los ciclos: break, next 
#--------------------------------------------------------------
# break
for (i in 1:length(datos)) {   # aplicar el ciclo desde 1, hasta el largo del vector datos
   if (datos[i] >= 4) {        # condición para instrucción de parada
    break                      # instrucción de parada
  }
  print(datos[i])              # imprimir cada elemento que cumple la condición
}


# next
for (i in 1:length(datos)) {   # aplicar el ciclo desde 1, hasta el largo del vector datos
  if (datos[i] == 4) {         # condición
    next                       # instrucción para saltar elemento  especifico (4)
  }
  print(datos[i])              # imprimir cada elemento 
}








