sq2 n = do
  if (n == 1) then sqrt 2 else sqrt (2+(sq2 (n-1)))

piApprox :: Integer -> Double
piApprox n =
  (fromIntegral 2) / (product [(sq2 x)/(fromIntegral 2) | x <- [1..n]])

main :: IO()
main = do
  n <- readLn
  print (piApprox n)