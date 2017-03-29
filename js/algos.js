// Write a function to return longest phrase or word in an array.
// Index through array, comparing the length of first object to a var set to zero
// Replace var with first object repeat comparison for all objects of array
// After all indexes compared return string storing longest array index

function longestString(arr) {
  var currentLong = 0;
  var longestAll = "";
  for (var i =0; i < arr.length; i+=1 ) {
    if (arr[i].length > currentLong) {
      currentLong = arr[i].length;
      longestAll = arr[i]
    }
  }
  return longestAll;
}

var arrayOne = ["Long", "Longest", "Longer", "Longer than the longest?"]
var arrayTwo = ["Some", "Fun", "for all the", "cold ones"]
var arrayThree = [".", "..", ".......", "....","............."]

console.log(longestString(arrayOne));
console.log(longestString(arrayTwo));
console.log(longestString(arrayThree));