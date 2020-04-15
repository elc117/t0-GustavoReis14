import Data.Char

func1 :: [Int] -> Bool
func1 lst = expre1 > expre2
    where expre1 = head lst + 20
          expre2 = last lst * 2


func2 :: String -> Bool
func2 str = 
    let digits = map digitToInt str
        sumdigits = sum digits
    in sumdigits > 50

testIO :: IO()
testIO = do
  nome <- getLine
  let encode  = map (\c -> chr (ord c + 1)) nome
  putStrLn encode

hello :: IO()
hello = do
    name <- getLine
    putStrLn ("Hello, " ++ name)

ini_vogal :: IO()
ini_vogal = do
    str <- getLine
    
    if elem (head str) "aeiouAEIOU"
        then putStrLn("Comeca com vogal")
        else putStrLn ("Nao comeca com vogal")