data Coordinates = Coordinates Int Int
  deriving (Show, Eq)

convert :: [Int] -> Coordinates
convert (x:y:xs) = Coordinates x y 

readCoordinates :: IO Coordinates
readCoordinates = fmap (convert.(map read).words) getLine

canBePlaced :: Int -> [Int] -> Bool
canBePlaced boardSize ship = True

main =  do
  putStrLn "Let's play batlleships!"
  boardSize <- readLn :: IO Int
  print boardSize
  putStrLn "Please choose battleship coordinates"
  coordinates <- readCoordinates
  print coordinates
