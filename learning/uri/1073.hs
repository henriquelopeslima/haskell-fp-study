import Text.Printf
import Data.Char

main = do
  args <- getArgs
  content <- readFile (args !! 0)
  let linesOfFiles = lines content
  printf "deu bom"
