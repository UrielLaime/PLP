
justificarCentroWhere :: Int -> String -> String
justificarCentroWhere n st
    | n < largo = "n es menor al largo del string original, no se puede centrar"
    | otherwise = espacioIzq ++ st ++ espacioDer
  where
    largo = length st
    espacios = n - largo
    espacioIzq = duplicar " " (espacios `div` 2)
    espacioDer = duplicar " " (espacios - (espacios `div` 2))



justificarCentro::Int -> String -> String
justificarCentro n st
    |n<length st = "n es menor al largo del string original, no se puede centrar"
    |otherwise =duplicar " " ((n-length st) `div` 2)-- espacios a izquierda(la mitad de los que faltan para llegar a n quitando el largost
    ++ st ++
    duplicar " " (n-length st - ((n - length st) `div` 2)) -- espacios derecha(la otra mitad faltante)

duplicar:: String -> Int -> String
duplicar x y 
    |y==0 = ""
    |y>0 = x++duplicar x (y-1)
    |otherwise="Error, ingrese un numero mayor o igual a 0"

main :: IO()
main= do
    putStrLn(justificarCentro 10 "homelander")