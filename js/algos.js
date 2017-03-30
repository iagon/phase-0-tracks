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

// Write a function to compare two objects key value pairs 
// Store keys from first hash in an array
// Iterate over array holding keys, indexing each value 
// Compare indexed values for keys in first hash to keys and index values of second
// If match return true, otherwise return false

function keyValueMatch(obj1, obj2){
  var keysOfObject = []
  for(var keys in obj1){ keysOfObject.push(keys) }

  for(var i = 0; i < keysOfObject.length; i+=1){
    if(obj1[keysOfObject[i]] == obj2[keysOfObject[i]]){
      return true;
    }
  }
      return false;
}


console.log(longestString(["Long", "Longest", "Longer", "Longer than the longest?"]));
console.log(longestString(["Some", "Fun", "for all the", "cold ones"]));
console.log(longestString([".", "..", ".......", "....","............."]));


console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 24}));
console.log(keyValueMatch({name: "Steven", age: 23, weight: 184}, {name: "Tamir", age: 24}));
console.log(keyValueMatch({name: "Steven", age: 23, weight: 184}, {name: "Tamir", age: 24, weight: 184}));
