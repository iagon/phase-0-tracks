// Write a function to return longest phrase or word in an array.
// Iterate through array for total length of array
// Compare length of first array index to var set to zero
// Replace var with first array index, compare second array index to first which is now set at var
// After all indexes compared, store var containing longest string in array indexes to string
// Return string

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

// 









console.log(longestString(["Long", "Longest", "Longer", "Longer than the longest?"]));
console.log(longestString(["Some", "Fun", "for all the", "cold ones"]));
console.log(longestString([".", "..", ".......", "....","............."]));