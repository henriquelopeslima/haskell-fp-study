import Text.Printf
import Data.Char

main::IO()
main = do
  distancia <- readLn :: IO Int
  litros <- readLn :: IO Double
  printf "%.3f km/l\n" ((fromIntegral distancia ) / litros)
  