anoIdade :: Int -> (Int, Int)
anoIdade info = (info, 2020 - info)

selectName :: (String,Int,Int) -> String
selectName (nome,_,_) = nome

distance :: (Float, Float) -> (Float, Float) -> Float
distance (x1,y1) (x2,y2) = x2^2-x1^2+y2^2-y1^2

--allNames :: [(String,Int,Int)] -> [String]
--allNames [(name,_,_)] = selectName [(name,_,_)]

convertToHTML :: [(String,String)] -> [String]
convertToHTML [(name,url)] = map translate [(name,url)]

translate :: (String,String) -> String
translate (name,url) = "''<a href=''" ++ url ++ "''>" ++ name ++ "</a>''"