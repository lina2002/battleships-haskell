readCoordinates :: IO [Int]
readCoordinates = fmap (map read) (fmap words getLine)

main =  do
  putStrLn "Let's play batlleships!"
  boardSize <- readLn :: IO Int
  print boardSize
  putStrLn "Please choose battleship coordinates"
  coordinates <- readCoordinates
  print coordinates
