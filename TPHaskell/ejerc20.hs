
maxOcurrencia:: Int->Int->(Int,Int)
maxOcurrencia a b
    |a<b=(b,1)
    |b<a=(a,1)
    |otherwise=(a,2)

maxOcurrenciaTres:: Int->Int->Int->(Int,Int)
maxOcurrenciaTres a b c 
    |a==b && b==c = (a,3)
    |a>=b && a>=c = if a==b || a==c then (a,2) else (a,1)
    |b>=a && b>=c = if b==a || b==c then (b,2) else (b,1)
    |c>=a && c>=b = if c==a || c==b then (c,2) else (c,1)