// release 0
//
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

//release 1
//
// We have to iterate through one hash and take each key and see if it corresponds to any of the keys in another hash
// if yes, return the key+values

function yourFunction(hash1, hash2){
  var are_equal = false;
  for (var prop in hash1){
    if (hash1[prop] == hash2[prop]){
      are_equal = true;
    }
    // console.log(`hash1.${prop} = ${hash1[prop]}`);
  }
  console.log(are_equal);
}


yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54});
yourFunction({animal: "Dog", legs: 4}, {animal: "Cat", legs: 3});


// release 2
//
// build an array of the alphabet
//set a variable that will pick a random number and select that item from that index in the alphabet array and print it out (random number 1-10) times
// print those variables user_input times and put them in an array

function gibberish_translator(integer){
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
  var array = [];
  var words = "";
  for (var i = 0; i < integer; i++) {
    for (var j = 0; j < (Math.floor((Math.random() * 10) + 1)); j++) {
      rand_letter = alphabet[Math.floor(Math.random() * alphabet.length)];
      words += rand_letter
    }
    array.push(words)
  }
  console.log(array)
}

gibberish_translator(4)