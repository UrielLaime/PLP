
minMax:: (Int,Int)->(Int,Int)
minMax (n,m)
    |n<m= (n,m)
    |otherwise=(m,n)

main::IO()
main=do
    print(minMax(7,5))