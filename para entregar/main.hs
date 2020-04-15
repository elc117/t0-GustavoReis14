import Data.Char
import Data.List(elemIndices)

--isBin :: String -> Bool


isBin' :: String -> Bool
isBin' cod = 
    let conv_cod = map digitToInt cod
        ver_cod = filter (>1) conv_cod
    in if ver_cod == [] then True else False 

auxBinDec' :: [Int] -> Int
auxBinDec' bin = sum (map (2^)  (elemIndices 1 (reverse bin)))
          