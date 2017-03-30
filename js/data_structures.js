var colors = ["green", "blue", "yellow", "red"];
var names = ["Tom", "Greg", "Jerry", "Horse"]

colors.push("mauve");
names.push("Donald");

var horses = {}
for (var i =0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}


function Car(make, model, mpg) {
  console.log("Ready of a new car?");
  this.make = make;
  this.model = model;
  this.mpg = mpg;

  this.backfire = function() {console.log("POW!"); };

  console.log("Your new car is complete!");
}

var aCar = new Car("Toyota", "Camry", 28)
console.log("The model is" + aCar.model);
console.log("The make is" + aCar.make);
console.log("The mpg is" + aCar.mpg);
console.log("You're car backfired")
aCar.backfire()

var aCar2 = new Car("Porsche", "9-11", 20)
console.log("The model is" + aCar2.model);
console.log("The make is" + aCar2.make);
console.log("The mpg is" + aCar2.mpg);

console.log("You're car backfired")
aCar2.backfire()

