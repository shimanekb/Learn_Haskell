module Main where

import Lib

main :: IO ()
main = do
        putStrLn "Enter an integer array: "
        input <- readLn :: IO [Int] 
        putStrLn (show (mySort input))
