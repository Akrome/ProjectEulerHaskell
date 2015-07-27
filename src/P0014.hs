module P0011 where

{-
    The following iterative sequence is defined for the set of positive integers:
    n ? n/2 (n is even)
    n ? 3n + 1 (n is odd)
    Using the rule above and starting with 13, we generate the following sequence:
    13 ? 40 ? 20 ? 10 ? 5 ? 16 ? 8 ? 4 ? 2 ? 1
    It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
    Which starting number, under one million, produces the longest chain?
    NOTE: Once the chain starts the terms are allowed to go above one million.
-}

import Data.List

main = putStrLn $ show compute

compute = fst.maximumBy (longestCollatzSequence) $ map (numberAndCollatzSequenceLength) [1..999999]

numberAndCollatzSequenceLength :: Int -> (Int, Int)
numberAndCollatzSequenceLength n = (n, length.collatzSequence $ n)

collatzSequence :: Int -> [Int]
collatzSequence n
    | n == 1 = [1]
    | n `rem` 2 == 0 = n : (collatzSequence $ n `div` 2)
    | n `rem` 2 /= 0 = n : (collatzSequence $ n * 3 + 1)

longestCollatzSequence a b =
    let
        aa = snd a
        bb = snd b
    in
        if (aa == bb) then EQ
        else if (aa < bb) then LT
        else GT