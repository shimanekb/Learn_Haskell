import Lib
import Test.Hspec

main :: IO()
main = hspec spec

spec :: Spec
spec = do
        describe "mySort Test" $ do
          it "should be in ascending order" $ do
             (mySort [5, 2, 3, 4, 1]) `shouldBe` [1, 2, 3, 4, 5]
