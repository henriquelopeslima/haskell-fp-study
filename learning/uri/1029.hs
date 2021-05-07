import Text.Printf
import Data.Char
    
fib::Int->Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

call::Int->Int
call 0 = 1
call 1 = 1
call x = call(x-1)+1+call(x-2)

main :: IO ()
main = do    
        n <- readLn :: IO Int
        func n
        return ()

func :: Int -> IO()
func 0 = return ()
func num = do
    n <-  readLn :: IO Int
    printf "fib(%d) = %d calls = %d\n" n ((call n)-1) (fib n)
    func (num-1) 