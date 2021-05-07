myReverse::[Int]->[Int]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]