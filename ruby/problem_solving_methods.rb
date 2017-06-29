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
  array = [0,]
  index = 0
  while index < n
     a = 0
     b = 1
    while b < n do
       array << b
      a,b = b,a+b
        end
  index +=1
  return array
  end
end

p fibonacci( 6 )