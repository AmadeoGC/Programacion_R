##########################################################
###           ELEMETOS DE PROGRAMACIÓN EN R            ###
###                 bucles -> for()                    ###
###              condición -> if/else                  ###
###                 parada -> break                    ###
###                 omitir -> next                     ###
###               <Amadeo Guzmán C.>                   ###
##########################################################


### Bucle (for) + condicional (if) con numeros
#-----------------------------------------------

#el ejemplo más básico de un bucle
for (i in 1:10) {
  print(i)
}

#si queremos guardar el resultado en un vector, lo primero es declarar el vector(objeto) 
#que guardará los resultados
clasif1 <- NULL

#correr programa -> un programa es una secuencia de códigos que busca resolver o ejecutar una tarea
#tarea: etiquetar como "grande" los numeros mayores a 5
for (i in 1:10) {
  if (i > 5) {
    clasif1[i] <- 'grande' 
  } 
}
#leemos nuestro vector
clasif1

#en este caso además se asignara la etiqueta "chico" a los numeros menores o igual a 5 y lo guardamos en un vector (clasif)
#ciclo for + if + else
clasif <- NULL

for (i in 1:10) {
  if (i > 5) {
    clasif[i] <- 'grande' 
  } else {
    clasif[i] <- 'chico'
  }
}
#leemos nuestro nuevo vector
clasif


#================================================================================================================================================================================================


### Como crear una nueva columna en un data frame -> for() + if() + else
#-------------------------------------------------------------------------

#creamos un pequeño data frame (xx)
r <- c(1,2,3,4,5,6,7,8,3,5,10) 
p <- c("v1","v2","v3","v4","v5","v6","v7","v8","V9","v10", "v11")
xx <- data.frame(p, r)

length(xx)
length(xx$r)

#bucle for() + if() + else -> Nueva variable "z"
z <- NULL
for (i in 1:length(xx$r)) {
  if (xx$r[i] > 5) {
    z[i] <- "n° grande"
  } else {
    z[i] <- "n° chico"
  }
}
#leemos nuestro nuevo vector
z


#=================================================================================================================================================================================


### Como crear un nuevo vector con doble condición [3 categorías]
#-------------------------------------------------------------------

#vector inicial
vector<-c(1,2,3,4,5,6,7,8,1,2,3,10,15)
#nuevo vector
nuevo <- NULL
#ciclo para crear 3 categorias -> cat_1 (<=5); cat_2 (6-8), cat_3 (>8)
for(i in 1:length(vector)) {
  if(vector[i]<=5) {
    nuevo[i] = "cat_1" 
  } else {
    if(vector[i]>=9) {
      nuevo [i]= "cat_3"
    } else {
      nuevo[i]= "cat_2"
    }
  }
}
#leemos nuestro nuevo vector
nuevo


#=======================================================================================================================================

#como hacer un ciclo for () dentro de otro
#--------------------------------------------

#para este ejemplo usaremos una matriz
mat1 <- matrix(1:9, ncol=3)
mat1

#recorrer la matriz e imprimir el valor de cada elemento (fila x columna)
for (i in 1:nrow(mat1)) {
  for (j in 1:ncol(mat1)) {
    print(paste("El valor de la fila ", i, "y la columan ", j, "es = ", mat1[i,j]))
  }
}


#agregamos una condición de parada break, en base a una condición if()
for (i in 1:nrow(mat1)) {
  for (j in 1:ncol(mat1)) {
    if (i+j >=5 ) {
      break
    }
    print(paste("El valor de la fila ", i, "y la columan ", j, "es = ", mat1[i,j]))
  }
}


#====================================================================================================================================================================


# Condición de parada -> break
#--------------------------------

cities <- c("New York", "Paris",
                 "London", "Tokyo",
                 "Rio de Janeiro", "Cape Town")

for(city in cities) {
  if(nchar(city) == 6) {
    break            #condición de parada, una vez que encuentra el elemento de 6 caracteres, se detiene el bucle y se imprimen los elementos antes de la condición
  }
  print(city)
}


#condición para omitir elementos -> next
#----------------------------------------
for(city in cities) {
  if(nchar(city) == 6) {
    next
  }
  print(city)
}
