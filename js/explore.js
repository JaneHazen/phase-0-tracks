// Change a string into an array of letters. (.split?)
// post-note: I guess you can't do that?

// Iterate through the array backwards using the negative of the length of the word as a starting point and printing each letter.

function reverse(words) {
  // var array = words.split(" ");
  for (var i = -words.length; i < words.length; i++) {
  console.log(words[-i]);
  }
}

reverse("jane");