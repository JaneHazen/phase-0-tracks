// create a function that will take an array as a parameter
// iterate through each item on the array with a for loop
// if the length of item one is greater than the next, return item (similar to the bubble-sort algorithm? but more clumsy because i have to do a comparison with the last one tacked on at the end)

// print the function
function sizeMatters(array){
  var longest_word = ""
  for (var i = 0; i < array.length-1; i++){
    if (array[i].length > array[i+1].length){
      longest_word = array[i]}
    }
  if(longest_word.length < array[array.length-1].length){
    longest_word = array[array.length-1]
    }
  return longest_word
  }

console.log(sizeMatters(["jane","andy","ano","makaela"]))

//
//
// We have to iterate through one hash and take each key and see if it corresponds to any of the keys in another hash (so iterate through that one)
// if yes, return the key+values
function yourFunction(hash1, hash2){
  for (var i = 0; i < hash1.length; i++){
    if hash1.i == hash2[1]
      return hash1, hash2;
  }
}

