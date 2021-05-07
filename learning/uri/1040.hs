import Text.Printf

main = do
    contents <- getContents
    let (x:y:x':y':_) = map (read :: String -> Double) $ words contents
    putStrLn $ printf "%.4f" $ sqrt $ (x'-x)^2 + (y'-y)^2
