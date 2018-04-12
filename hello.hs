data Coordinates = Coordinates Int Int

readCoordinates :: IO [Int]
readCoordinates = fmap ((map read).words) getLine

canBePlaced :: Int -> [Int] -> Bool
canBePlaced boardSize ship = True

main =  do
  putStrLn "Let's play batlleships!"
  boardSize <- readLn :: IO Int
  print boardSize
  putStrLn "Please choose battleship coordinates"
  coordinates <- readCoordinates
  print coordinates
