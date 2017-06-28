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

