import Text.Printf
import Data.Char

main::IO()
main = do
  -- printf "Digite outro valor "
  x1 <- readLn :: IO Double
  x2 <- readLn :: IO Double
  x3 <- readLn :: IO Double
  x4 <- readLn :: IO Double
  x5 <- readLn :: IO Double
  x6 <- readLn :: IO Double
  let list = [x1,x2,x3,x4,x5,x6]
  printf "%d valores positivos\n%.1f\n" (length (filter (\n -> n > 0) list)) ((sum  (filter (\n -> n > 0) list))/ fromIntegral (length  (filter (\n -> n > 0) list)))
