##########################################################
###           ELEMETOS DE PROGRAMACIÓN EN R            ###
###                 bucles -> for()                    ###
###              condición -> if/else                  ###
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


#ciclo for + if + else
clasif <- NULL

for (i in 1:10) {
  if (i > 5) {
    clasif[i] <- 'grande' 
  } else {
    clasif[i] <- 'chico' # *2
  }
}
#leemos nuestro nuevo vector
clasif


#================================================================================================================================================================================================


### Como crear una nueva columna en un data frame -> for() + if() + else
#-----------------------------------------------------------------------

#creamos un pequeño data frame
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
    nuevo[i] = "cat_1" # valore alfanumerico
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


#====================================================================================================================================================================


# Condición de parada -> break
#--------------------------------

cities <- list("New York", "Paris",
                 "London", "Tokyo",
                 "Rio de Janeiro", "Cape Town")

for(city in cities) {
  if(nchar(city) == 6) {
    break
  }
  print(city)
}



for(city in cities) {
  if(nchar(city) == 6) {
    next
  }
  print(city)
}






