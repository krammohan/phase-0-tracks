var colors = ["red", "green", "yellow", "pink"];
var names = ["Paul", "George", "Ringo", "John"];

colors.push("blue");
names.push("Ed");

// For each element in the colors array
// Create a horse object with attributes name and color which are values from the names and colors arrays
// Print out each object
for (i = 0; i < colors.length; i++) {
  var horse = {
  	name: names[i],
  	color: colors[i]
  }
  console.log("The horse's name is " + horse['name'] + " and its color is " + horse['color']);
}


// Constructor function for a car

