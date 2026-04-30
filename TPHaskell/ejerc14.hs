
entreLineas :: String->String->String->String
entreLineas x y z = x++" "++y++" "++z

main ::IO()
main= do
    print(entreLineas "hola""buenos""dias")