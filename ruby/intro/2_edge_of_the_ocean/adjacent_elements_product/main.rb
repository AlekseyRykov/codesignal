def adjacentElementsProduct(inputArray)

  arr = Array.new

  until inputArray[1].nil?
    arr << inputArray[0] * inputArray[1]
    inputArray.shift(1)
  end

  arr.max

end