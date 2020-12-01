-- Checks for the two unique entries that sum to 2020.
-- Returns the product of those two entries.
findEntries :: [Int] -> Int
findEntries (x : xs)
  | elem diff xs = x * diff
  | otherwise    = findEntries xs
  where
    diff = 2020 - x

main :: IO()
main
  = do
      s <- readFile "01.txt"
      let ns   = map (read :: String -> Int) (lines s)
          prod = findEntries ns
      putStrLn $ show prod
