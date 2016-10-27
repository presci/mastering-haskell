module Main where




filenameLength :: FilePath -> Int
filenameLength filePath = length filePath

contentsLength :: FilePath -> IO Int
contentsLength filePath = do
    contents <- readFile filePath
    return (length contents)


main :: IO ()
main = do
  putStrLn "example:"
  
  writeFile "foo.txt" "abcd"
  print $   filenameLength "foo.txt"
  print =<< contentsLength "foo.txt"
  
  putStrLn "--"
  
  writeFile "foo.txt" "hello world"
  print $   filenameLength "foo.txt"
  print =<< contentsLength "foo.txt"
