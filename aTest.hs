import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.Framework.Providers.QuickCheck2

import Test.QuickCheck
import Test.HUnit
import Data.List(sort)

import qualified A as A

main ::  IO ()
main = defaultMain tests

tests = [
	  testGroup "Blah" [
	    testCase "sortblah" test_tail,
      testProperty "sortbleh" prop_sort,
      testProperty "adderblih" prop_adder
	  ]
	]

test_tail :: Assertion
test_tail =
  [2,3,4] @=? tail ([1,2,3,4] :: [Int])

prop_sort :: [Int] -> Bool
prop_sort xs = (sort xs) == (sort (sort xs))

prop_adder :: Int -> Int -> Bool
prop_adder a b = A.adder a b == a + b
