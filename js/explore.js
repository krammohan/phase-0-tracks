// Initialize new empty string
// For each letter from the end of the input string
	// Let the new string equal the last letter of input string added to the new string
// Return the new string

function reverse(str) {
  new_str = '';
  for (var i = str.length-1; i >= 0; i--) {
  	new_str = new_str + str[i];
  }
  return new_str;
}


// Driver code
result = reverse("carrot");
if(1 == 1) {
  console.log(result)
}