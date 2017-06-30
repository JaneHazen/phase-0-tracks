def search_array(arr, integer)
  index = 0
  arr.each do |number|
    if integer == number
      return index
    end
    index += 1
  end
  nil
end

arr = [42, 89, 23, 1]

p search_array(arr, 4)

# make an array that lists fibonacci numbers while the input is less than number given

def fibonacci(n)
  fibarray = []
  index = 0
  while index < n
     a = 0
     b = 1
    n.times do
       fibarray << b
      a,b = b,a+b
        end
  index +=1
  return fibarray
  end
end

p fibonacci( 100 )

# bubbleSort logic
# sort by iterating over each item in an array, finding out if one item is less than the one following it, and switching them if they are not ordered small to big.

def bubbleSort arr
  num = arr.length

  loop do

    sorted = false

    (num-1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break if not sorted
  end
  arr
end

x = [1,2,3,4,2,3,5,6,2,36,7,64,5,35,5,62,1]

p bubbleSort x

p bubbleSort fibonacci(20)