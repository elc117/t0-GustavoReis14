add10toall :: [Int] -> [Int]
add10toall res = map (\x -> x + 10) res

multN :: Int -> [Int] -> [Int]
multN n lst = map (\x -> x * n) lst

applyExpr :: [Int] -> [Int]
applyExpr lst = map (\x -> 3 * x + 2 ) lst

addSuffix :: String -> [String] -> [String]
addSuffix suf str = map (\x -> x ++ suf) str

selectgt5 :: [Int] -> [Int]
selectgt5 lst = filter (>5) lst

sumOdds :: [Int] -> Int
sumOdds lis =
    sum [ x | x <- lis, odd x ]

selectExpr :: [Int] -> [Int]
selectExpr lis = [x | x <- lis,  x]