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

function Car(color, doors, isSportsCar) {
  console.log("The car: ", this);
  
  this.color = color;
  this.doors = doors;
  this.isSportsCar = isSportsCar;
  
  this.honk = function(num) {
    for (i = 0; i < num; i++){
  	  console.log("Beep");
  	}
  	console.log("!");
  }	

}

var car1 = new Car("red", 4, false);
console.log(car1);
console.log("Honking 5 times:");
car1.honk(5);

var car2 = new Car("blue", 2, true);
console.log(car2);
console.log("Honking 20 times:");
car2.honk(20);
