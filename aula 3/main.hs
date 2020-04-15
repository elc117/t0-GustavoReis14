isVowel :: Char -> Bool
isVowel c 
        | c `elem` "aeiou" = True
        | otherwise = False

addComma :: [String] -> [String]
addComma lista = map (\x -> x ++ ",") lista

formatItem :: String -> String
formatItem item = "<LI>" ++ item ++ "</LI>"

htmlListItems :: [String] -> [String]
htmlListItems li = map (\x -> "<LI>" ++ x ++ "</LI>") li
--htmlListItems li = map formatItem li

semVogais :: String -> String
--semVogais palavra = filter (not . isVowel) palavra 
semVogais palavra = filter (\x -> not ( elem x "aeiouAEIOU" ) ) palavra

cod :: Char -> Char
cod c 
        | c == ' ' = ' '
        |otherwise = '-'

codifica :: String -> String
--codifica codigo = map cod codigo
codifica codigo = map (\x -> if x == ' ' then ' ' else '-') codigo

firstName :: String -> String
firstName name = takeWhile (/= ' ') name

isInt :: String -> Bool
isInt num = isIntAux2 (map isIntAux num) 

isIntAux :: Char -> Bool
isIntAux char
    | char == '1' = True
    | char == '2' = True
    | char == '3' = True
    | char == '4' = True
    | char == '5' = True
    | char == '6' = True
    | char == '7' = True
    | char == '8' = True
    | char == '9' = True
    | char == '0' = True
    | otherwise = False

isIntAux2 :: [Bool] -> Bool
isIntAux2 lis = if ( filter (\x -> x == False) lis ) /= [] then False else True

