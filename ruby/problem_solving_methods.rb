arr = [1, 2, 3, 4, 5]

nums = {}
arr.each do |number, position|
  position = 0
    while position < arr.length
    nums = {number => position}
    position +=  1
    end
end
p nums



# assign a hash for each number in the array that identifies the number in the array as the key and the index number as the value



def search_array(arr, position)

end