import Text.Printf
import Data.Char


test::String->String->String->IO()
test "vertebrado" "ave" third = if (third=="carnivoro") then printf "aguia\n" else printf "pomba\n"
test "vertebrado" "mamifero" third = if (third=="onivoro") then printf "homem\n" else printf "vaca\n"
test "invertebrado" "inseto" third = if (third=="hematofago") then printf "pulga\n" else printf "lagarta\n"
test "invertebrado" "anelideo" third = if (third=="hematofago") then printf "sanguessuga\n" else printf "minhoca\n"
test "vertebrado" second third = if (second=="ave") then test "vertebrado" "ave" third else test "vertebrado" "mamifero" third
test "invertebrado" second third = if (second=="inseto") then test "invertebrado" "inseto" third else test "invertebrado" "anelideo" third
test first second third = if (first=="vertebrado") then test "vertebrado" second third else test "invertebrado" second third




main::IO()
main = do
  first  <- getLine :: IO String
  second <- getLine :: IO String
  third  <- getLine :: IO String
  test first second third