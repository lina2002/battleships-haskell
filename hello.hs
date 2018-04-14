data Coordinates = Coordinates Int Int
  deriving (Show, Eq)

convert :: [Int] -> Coordinates
convert (x:y:xs) = Coordinates x y 

readCoordinates :: IO Coordinates
readCoordinates = fmap (convert.(map read).words) getLine

canBePlaced :: Int -> [Coordinates] -> Bool
canBePlaced boardSize ship = all (canBePlaced2 boardSize) ship

canBePlaced2 :: Int -> Coordinates -> Bool
canBePlaced2 boardSize (Coordinates x y)  = x >= 1 && y >= 1 && x <= boardSize && y <= boardSize


main =  do
  putStrLn "Let's play batlleships!"
  boardSize <- readLn :: IO Int
  print boardSize
  putStrLn "Please choose battleship coordinates"
  coordinates <- readCoordinates
  let c = canBePlaced boardSize [coordinates]
  print c
