##########################################
###       Estructuras de Control       ###
###     Ciclos -> for(), while ()      ###
###    interacci�n con if/break/next   ###
###        <Amadeo Guzm�n C.>          ###
##########################################


'El lenguaje cuenta con varios tipos de ciclos o repeticiones, a saber: 
- Repeticiones por un n�mero determinado de veces. 
- Repeticiones mientras se cumple una condici�n.
- Repeticiones infinitas.'


#-------------------------------------------------------------
### Repeticiones por un n�mero determinado de veces -> for()
#-------------------------------------------------------------
#repeticiones por un numero EXPLICITO de veces 1:6
for (i in 1:6) {
  print(paste("N�:", i))
}

# 1:3
for (i in 1:3) {
  print(paste("N�:", i))
}

#repeticiones por un numero de veces, en forma IMPLICITA en la construcci�n for()
datos <- c(1,2,3,4,5,6)

for (i in 1:length(datos)) {
  print(i)
}


#------------------------------------------------------
### Repeticiones mientras se cumple una condici�n 
#------------------------------------------------------
# while()
i <- 1                           # es necesario definir un vector inicial
while (i <= 4) {                 # mientras se cumpla la condici�n i <= 4
  print(datos[i])                # impimir si el elemento cumple la condici�n
  i <- i + 1                     # al final de cada ciclo subir 1 nivel i+1, para acumular los resultados
}

#opci�n con for () + if()
for (i in 1:length(datos)) {     # aplicar el ciclo desde 1, hasta el largo del vector datos
  if (datos[i] <= 4) {           # condic�n
    print(datos[i])              # imprimir cada elemento que cumple con la condici�n
      }
}


#for () + if() + else{}
for (i in 1:length(datos)) {   # aplicar el ciclo desde 1, hasta el largo del vector datos
  if (datos[i] <= 4) {           # condici�n
    print(datos[i])              # imprimir cada elemento que cumple con la condici�n
  } else{
    print("no cumple condici�n")  # si no cumple con la condici�n imprimir este mensaje
  }
}



#--------------------------------------------------------------
### Interrupci�n del flujo normal de los ciclos: break, next 
#--------------------------------------------------------------
# break
for (i in 1:length(datos)) {   # aplicar el ciclo desde 1, hasta el largo del vector datos
   if (datos[i] >= 4) {        # condici�n para instrucci�n de parada
    break                      # instrucci�n de parada
  }
  print(datos[i])              # imprimir cada elemento que cumple la condici�n
}


# next
for (i in 1:length(datos)) {   # aplicar el ciclo desde 1, hasta el largo del vector datos
  if (datos[i] == 4) {         # condici�n
    next                       # instrucci�n para saltar elemento  especifico (4)
  }
  print(datos[i])              # imprimir cada elemento 
}








