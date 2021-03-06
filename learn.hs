-- Recives an int and returns a bool if the number given is less than 0
negativenum :: Int -> Bool
negativenum n = if n < 0
                then True
                else False

-- Displays the length of sides that make up a right triangle with a given perimeter and range
rightTriangle :: Int -> Int -> [(Int, Int, Int)]
rightTriangle p r = [ (a,b,c) | c <- [1..r], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == p]

-- Recursive factorial example with type constraints and pattern matching
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n-1)

-- d takes a distance, x, y, and z take speeds. determines how far z travels back and forth between x and y over the given distance d at the given speeds
flightDistance :: (Integral b, RealFrac a) => a -> a -> a -> a -> b
flightDistance d x y z = truncate(d / (x + y) * z) 

-- recusive exponential summation problem
exsum :: Double -> Double
exsum 0 = 0
exsum n = sum[2**x | x <- [1..n]] + exsum(n-1)

-- fizzbuzz
fizzbuzz :: Int -> String
fizzbuzz n
    | n `mod` 15 == 0 = "FizzBuzz"
    | n `mod` 5  == 0 = "Buzz"
    | n `mod` 3  == 0 = "Fizz"
    | otherwise       = show n
