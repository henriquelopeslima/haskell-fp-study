import Text.Printf

main :: IO ()
main = do
        a <- readLn :: IO Double
        printf "A=%.4f\n" ((a^2)*3.14159) 