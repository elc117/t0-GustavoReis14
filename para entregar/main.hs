import Data.Char

isBin :: String -> Bool
isBin cod = 
    let conv_cod = map digitToInt cod
        ver_cod = filter (>1) conv_cod
    in if ver_cod == [] then True else False 
