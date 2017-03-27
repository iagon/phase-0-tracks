// create an empty string
// create counter i
// while i is less than string length
// add to empty string, string[i] + empty string


var reverse = ""

function reverseString(string) {
  for (var i = 0; i < string.length; i++)
  reverse = string[i] + reverse;
  return reverse
}

var stringReversed = reverseString("hello");