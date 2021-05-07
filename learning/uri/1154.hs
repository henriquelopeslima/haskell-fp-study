import Text.Printf

aux::Double->Double->IO()
aux x y = do
	ent <- readLn :: IO Double
	if(ent>0) then aux (x+ent) (y+1)
	else printf "%.2f\n" (x/y)

main :: IO ()
main = do
    aux 0 0