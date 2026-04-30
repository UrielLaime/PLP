
duplicar:: String->Int->String
duplicar frase 0= ""
duplicar frase n= frase ++""++duplicar frase (n-1)

main:: IO()
main= do

    print(duplicar "hola" 4)