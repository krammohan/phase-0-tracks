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

// Set tracking variable to default to false
// For each key in first object and each key in second object
	// If the first object's key and second object's key are the same and the values for the keys are the same too
		// Set the tracker's value to true
// Return the value of the tracker (true or false)

function similar(obj1, obj2) {
  tracker = false;
  for (key in obj1){
 	for(key2 in obj2){
 	  if (key == key2 && obj1[key] == obj2[key2]) {
 	    tracker = true;
 	  }
 	}
  }
  return tracker;
}

//console.log(longest(["long phrase","longest phrase","longer phrase"]));
//console.log(longest(["cat", "fish", "snake", "bat"]));

console.log(similar({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(similar({shade: "red", size: 10, isCool: true}, {color: "red", size: 11, isCool: false}));