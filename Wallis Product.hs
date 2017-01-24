--Wallis Product
--se1 :: Int -> Int
se1 n =
  product [x | x <- [1,3 .. (2*n - 1)]]

--se2 :: Int -> Int
se2 n =
  product [x | x <- [2,4 .. (2*n)]]

--se3 :: Int -> Int
se3 n = (se1 n) * (2*n + 1)

--piApprox :: Int -> Double
piApprox n = 2*((fromIntegral (se2 n))/(fromIntegral (se1 n)))*((fromIntegral (se2 n))/(fromIntegral (se3 n)))

main :: IO()
main = do
  n <- readLn
  --print (se1 n)
  --print (se2 n)
  --	print (se3 n)
  print (piApprox n)