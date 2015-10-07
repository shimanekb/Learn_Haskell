module Main where

import Lib

main :: IO ()
main = do
        putStrLn "Enter an integer: "
        input1 <- readLn :: IO Int
        putStrLn "Enter another integer: "
        input2 <- readLn :: IO Int
        putStrLn (show (addTwo input1 input2))

addTwo :: Int -> Int -> Int
addTwo x y = x + y
