suc::Int->Int
suc x = x+1

ant::Int->Int
ant x = x-1

soma::Int->Int->Int
soma x y | (x == y) = x
         | otherwise = y + soma x (y-1) 
