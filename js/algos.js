// Set empty variable longest
// For all elements in the array
// If the length of current element in array is greater than previous element
	// Set variable equal to that element
// Return variable 

function longest(arr) {
  var longest = 0;
  for (i = 1; i < arr.length; i++){
	if (arr[i].length > arr[i-1].length) {
	  longest = arr[i];
	}
  }
  return longest;
}

function similar(obj1, obj2) {
  
}

console.log(longest(["long phrase","longest phrase","longer phrase"]));
console.log(longest(["cat", "fish", "snake", "bat"]));
