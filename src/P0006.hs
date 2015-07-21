module P0006 where

main = putStrLn $ show compute

compute = squareOfSum nums - sumOfSquares nums

nums = [1..100]

sumOfSquares = sum.map square
squareOfSum = square.sum

square x = x*x