import Text.Printf
import Data.Char
    
main :: IO ()
main = do    
        renda <- readLn :: IO Double
        if(renda>2000.00) then printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: %c %%\n" (1.04*renda) ((1.04*renda)-renda) ('4')
          else if(renda>=1200.01) then printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: %c %%\n" (1.07*renda) ((1.07*renda)-renda) ('7')
            else if(renda>=800.01) then printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: %s %%\n" (1.10*renda) ((1.10*renda)-renda) ("10")
              else if(renda>=400.01) then printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: %s %%\n" (1.12*renda) ((1.12*renda)-renda) ("12")
                else printf "Novo salario: %.2f\nReajuste ganho: %.2f\nEm percentual: %s %%\n" (1.15*renda) ((1.15*renda)-renda) ("15")