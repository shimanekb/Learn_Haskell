doubleUs x y = x * 2 + y * 2

doubleMe x = x + x

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
