import Prelude hiding (last)

last::Num a => [a] -> a
last xs = head(reverse xs)