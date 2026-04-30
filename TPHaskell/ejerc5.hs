
fibo :: Int->Int
fibo 0 =0
fibo 1=1
fibo n= fibo (n-1)+fibo (n-2)

factorial :: Int->Int
factorial 0=1
factorial n= n*factorial (n-1)

sumatoriaExponente :: Int->Int->Int

sumatoriaExponente i n =
    if i<=n then i^n + sumatoriaExponente (i+1) n
    else 0

funcion :: Int->Int->Int
funcion x n= sumatoriaExponente 1 n `div` factorial x