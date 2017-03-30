var colors = ["green", "blue", "yellow", "red"];
var names = ["Tom", "Greg", "Jerry", "Horse"]

colors.push("mauve");
names.push("Donald");

var horses = {}
for (var i =0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

