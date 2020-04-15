import Data.Char
import Data.List(elemIndices)

isBin :: String -> Bool


isBin' :: String -> Bool
isBin' cod = 
    let conv_cod = map digitToInt cod
        ver_cod = filter (>1) conv_cod
    in if ver_cod == [] then True else False 

bin2dec :: [Int] -> Int
bin2dec [] = undefined
bin2dec bits = auxBin2Dec bits ((length bits)-1)

auxBin2Dec :: Int -> Int -> Int

bin2dec' :: [Int] -> Int
auxBinDec' bin = sum (map (2^)  (elemIndices 1 (reverse bin))) --reverse inverte

isHex :: String -> Bool
isHex num = 
    let   true_n = filter (isHexDigit) num
    in if length num == length true_n  then True else False

          