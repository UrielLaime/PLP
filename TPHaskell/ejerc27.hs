
multiplosDeXnumero:: (Int,Int,Int)->String
multiplosDeXnumero (x,y,z)
    |y<x = ""
    |x`mod`z==0 = show x ++" "++multiplosDeXnumero (x+1,y,z)
    |otherwise = multiplosDeXnumero (x+1,y,z)