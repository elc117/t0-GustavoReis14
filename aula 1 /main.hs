main = do 
  putStrLn "Teste as funcoes abaixo!"


-- Eleva um numero ao quadrado
-- Aqui temos um comentario!
square :: Int -> Int
square x = x^2

-- Verifica se um numero eh par (usa if/then/else para expressar funcao condicional)
-- A funcao 'mod' retorna resto da divisao inteira
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False
-- Ou simplesmente:
-- isEven n = mod n 2 == 0

-- Gera um numero a partir de um caracter 
-- Note esta estrutura condicional em Haskell, usando'guardas' (|)
encodeMe :: Char -> Int
encodeMe c 
   | c == 'S'  = 0
   | c == 'N'  = 1
   | otherwise = undefined

-- Calcula o quadrado do primeiro elemento da lista
-- Note que '[Int]' designa uma lista de elementos do tipo Int 
squareFirst :: [Int] -> Int
squareFirst lis = (head lis)^2

-- Verifica se uma palavra tem mais de 10 caracteres
isLongWord :: String -> Bool -- isso é o mesmo que: isLongWord :: [Char] -> Bool
isLongWord s = length s > 10

--recebe dois números x e y e calcula a soma dos seus quadrados
sumSquares :: Int -> Int -> Int
sumSquares x y = square x + square y

--Defina uma função calcExprInt :: Int -> Int que receba um número n e calcule 3*n^2 + 1
calcExprInt :: Int -> Int 
calcExprInt n = 3 * n ^ 2 + 1

--Crie uma função isNegative :: Int -> Bool que receba um número n e vefique se ele é negativo.
isNegative :: Int -> Bool
isNegative n 
    | n < 0  = True 
    | n >= 0 = False

--Crie uma função calcExprFloat :: Float -> Float que receba um número n e calcule n^2 + n/2 + 1.
calcExprFloat :: Float -> Float 
calcExprFloat n = n ^ 2 + n / 2 + 1

--Defina uma função addPrefix :: String -> String que receba um nome (tipo String) e adicione a string "Mr. " no início do nome. Use o operador ++ para concatenar strings (ou qualquer lista do mesmo tipo).
addPrefix :: String -> String
addPrefix name = "Mr. " ++ name

--Crie uma função addThisPrefix :: String -> String -> String que receba duas strings e concatene-as.
addThisPrefix :: String -> String -> String
addThisPrefix pre name  = pre ++ " " ++ name

--Crie uma função startsWithA :: String -> Bool que receba uma string e verifique se ela inicia com o caracter 'A'.
startsWithA :: String -> Bool
startsWithA word = head word == 'A'

--Defina uma função isVerb :: String -> Bool que receba uma string e verifique se ela termina com o caracter 'r'. Antes desse exercício, teste no interpretador a função pré-definida last, que retorna o último elemento de uma lista. Dica: conheça também o list monster, do autor Miran Lipovača :-)
isVerb :: String -> Bool
isVerb word = last word == 'r'

--Crie uma função isVowel :: Char -> Bool que receba um caracter e verifique se ele é uma vogal minúscula.
isVowel :: Char -> Bool
isVowel word 
    | word `elem` "aeiou" = True 

--Crie uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifique se 2 listas possuem o mesmo primeiro elemento. Use a função head e o operador lógico == para verificar igualdade.
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads head1 head2 
    | head head1 /= head head2 = False
    | head head1 == head head1 = True 

--A função pré-definida elem recebe um elemento e uma lista, e verifica se o elemento está presente ou não na lista. Teste essa função no interpretador:
--SÓ TESTAR

--Use a função elem para criar uma função isVowel2 :: Char -> Bool que verifique se um caracter é uma vogal, tanto maiúscula como minúscula.
isVowel2 :: Char -> Bool
isVowel2 v 
        | v `elem` "aeiou" = True
        | v `elem` "AEIOU" = True
        | otherwise = False

--Crie uma função testAddPrefix :: [String] -> [String] que receba uma lista de nomes e aplique a função addPrefix em cada nome.
testAddPrefix :: [String] -> [String]
testAddPrefix lis_n = map addPrefix lis_n

--Crie uma função onlyVowels :: String -> String que receba uma string e retorne outra somente contendo suas vogais. Por exemplo: onlyVowels "abracadabra" vai retornar "aaaaa".
onlyVowels :: String -> String
onlyVowels v = filter isVowel2 v

--Escreva uma função onlyNegatives :: [Int] -> [Int] que, dada uma lista de números, selecione somente os que forem negativos.
onlyNegatives :: [Int] -> [Int]
onlyNegatives n = filter isNegative n

--Escreva uma função que, dada uma lista de números, aplique calcExprFloat para cada número da lista.
calcExpFloat :: [Float] -> [Float]
calcExpFloat l = map (\x -> x^2) l

--Crie uma função onlyLongWords :: [String] -> [String] que receba uma lista de strings e retorne somente as strings longas (use a função isLongWord definida no código de exemplo no início da prática).
onlyLongWords :: [String] -> [String]
onlyLongWords palavra = filter isLongWord palavra

--Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.

--Crie uma função que receba uma lista de palavras e retorne outra lista com somente aquelas que terminarem com a letra 'r'.


--Escreva uma função que receba uma lista de números e retorne somente os que estiverem entre 1 e 100, inclusive. Você vai ter que criar uma função auxiliar e usar && para expressar o and lógico em Haskell.

--Crie uma função que receba uma string e retorne o número de espaços nela contidos. Dica 1: você vai precisar de uma função que identifica espaços. Dica 2: aplique funções consecutivamente, isto é, use o resultado de uma função como argumento para outra.
