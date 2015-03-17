doubleSmallNumber x =
  if x > 100
  then x
  else x * 2

doubleSmallNumber' x | x > 100 = x
doubleSmallNumber' x = x * 2

