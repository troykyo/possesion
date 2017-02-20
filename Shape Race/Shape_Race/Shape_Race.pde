// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Crowd Path Following
// Via Reynolds: http://www.red3d.com/cwr/steer/CrowdPath.html

// Using this variable to decide whether to draw all the stuff
boolean debug = false;


// A path object (series of connected points)
Path path;

// Two vehicles
ArrayList<Vehicle> vehicles;

void setup() {
  size(1600, 600);
  // Call a function to generate new Path object
  newPath();

  // We are now making random vehicles and storing them in an ArrayList
  vehicles = new ArrayList<Vehicle>();
  for (int i = 0; i < 10; i++) {
    newVehicle(random(400), random(400));
  }
}

void draw() {
  background(255);
  // Display the path
  //path.display();

  for (Vehicle v : vehicles) {
    // Path following and separation are worked on in this function
    v.applyBehaviors(vehicles, path);
    // Call the generic run method (update, borders, display, etc.)
    v.run();
  }

  // Instructions
  fill(0);
  textAlign(CENTER);
  text("Hit 'd' to toggle debugging lines.\nClick the mouse to generate new vehicles.", width/2, height-20);
}

void newPath() {
  // A path is a series of connected points
  // A more sophisticated path might be a curve
  path = new Path();
  float offset = 200;
  float scale=1;
//Cayenne
 path.addPoint(193.6/scale+offset, 122.4/scale+offset/1.5);
 path.addPoint(211.4/scale+offset, 141.8/scale+offset/1.5);
 path.addPoint(223/scale+offset, 160.1/scale+offset/1.5);
 path.addPoint(223/scale+offset, 170.6/scale+offset/1.5);
 path.addPoint(197.3/scale+offset, 188.4/scale+offset/1.5);
 path.addPoint(180/scale+offset, 194.2/scale+offset/1.5);
 path.addPoint(142.3/scale+offset, 194.2/scale+offset/1.5);
 path.addPoint(77.4/scale+offset, 188.9/scale+offset/1.5);
 path.addPoint(54.3/scale+offset, 185.3/scale+offset/1.5);
 path.addPoint(37.1/scale+offset, 175.8/scale+offset/1.5);
 path.addPoint(29.2/scale+offset, 164.3/scale+offset/1.5);
 path.addPoint(29.2/scale+offset, 146/scale+offset/1.5);
 path.addPoint(37.1/scale+offset, 117.2/scale+offset/1.5);
 path.addPoint(47.5/scale+offset, 100.4/scale+offset/1.5);
 path.addPoint(59.1/scale+offset, 87.9/scale+offset/1.5);
 path.addPoint(73.7/scale+offset, 79.5/scale+offset/1.5);
 path.addPoint(92/scale+offset, 79.5/scale+offset/1.5);
 path.addPoint(113.5/scale+offset, 79.5/scale+offset/1.5);
 path.addPoint(136/scale+offset, 85.2/scale+offset/1.5);
 path.addPoint(158/scale+offset, 96.8/scale+offset/1.5);
 path.addPoint(175.8/scale+offset, 107.2/scale+offset/1.5);
}

/*
//718
 path.addPoint(228.3/scale+offset, 158.1/scale+offset/1.5);
 path.addPoint(228.3/scale+offset, 171.2/scale+offset/1.5);
 path.addPoint(219.9/scale+offset, 179.1/scale+offset/1.5);
 path.addPoint(159.2/scale+offset, 181.2/scale+offset/1.5);
 path.addPoint(114.7/scale+offset, 175.9/scale+offset/1.5);
 path.addPoint(67/scale+offset, 164.4/scale+offset/1.5);
 path.addPoint(47.7/scale+offset, 152.4/scale+offset/1.5);
 path.addPoint(35.6/scale+offset, 128.8/scale+offset/1.5);
 path.addPoint(35.6/scale+offset, 98.9/scale+offset/1.5);
 path.addPoint(43.5/scale+offset, 67.5/scale+offset/1.5);
 path.addPoint(59.2/scale+offset, 46.1/scale+offset/1.5);
 path.addPoint(80.6/scale+offset, 36.6/scale+offset/1.5);
 path.addPoint(111/scale+offset, 36.6/scale+offset/1.5);
 path.addPoint(135.6/scale+offset, 46.6/scale+offset/1.5);
 path.addPoint(166.5/scale+offset, 71.2/scale+offset/1.5);
 path.addPoint(192.2/scale+offset, 97.4/scale+offset/1.5);
 path.addPoint(213.1/scale+offset, 129.3/scale+offset/1.5);
 
 //911
 path.addPoint(132.6/scale+offset, 60.3/scale+offset/1.5);
 path.addPoint(166.6/scale+offset, 65/scale+offset/1.5);
 path.addPoint(190.7/scale+offset, 82.8/scale+offset/1.5);
 path.addPoint(208/scale+offset, 109.5/scale+offset/1.5);
 path.addPoint(208/scale+offset, 143.1/scale+offset/1.5);
 path.addPoint(198/scale+offset, 178.4/scale+offset/1.5);
 path.addPoint(170.3/scale+offset, 201.7/scale+offset/1.5);
 path.addPoint(138.9/scale+offset, 213.8/scale+offset/1.5);
 path.addPoint(102.7/scale+offset, 211.7/scale+offset/1.5);
 path.addPoint(68.7/scale+offset, 193.3/scale+offset/1.5);
 path.addPoint(49.3/scale+offset, 168.2/scale+offset/1.5);
 path.addPoint(46.7/scale+offset, 137/scale+offset/1.5);
 path.addPoint(54/scale+offset, 106.9/scale+offset/1.5);
 path.addPoint(77.6/scale+offset, 82.8/scale+offset/1.5);
 path.addPoint(105.3/scale+offset, 66.1/scale+offset/1.5);
 
 //Panamera
 path.addPoint(226.6/scale+offset, 162.9/scale+offset/1.5);
 path.addPoint(231.3/scale+offset, 176/scale+offset/1.5);
 path.addPoint(226.6/scale+offset, 183.3/scale+offset/1.5);
 path.addPoint(207.3/scale+offset, 190/scale+offset/1.5);
 path.addPoint(177.4/scale+offset, 194.8/scale+offset/1.5);
 path.addPoint(132.9/scale+offset, 192.2/scale+offset/1.5);
 path.addPoint(98.8/scale+offset, 187.5/scale+offset/1.5);
 path.addPoint(67.4/scale+offset, 178.9/scale+offset/1.5);
 path.addPoint(48.6/scale+offset, 167.1/scale+offset/1.5);
 path.addPoint(44.4/scale+offset, 157.6/scale+offset/1.5);
 path.addPoint(38.1/scale+offset, 133.6/scale+offset/1.5);
 path.addPoint(40.7/scale+offset, 110/scale+offset/1.5);
 path.addPoint(52.2/scale+offset, 87.5/scale+offset/1.5);
 path.addPoint(67.4/scale+offset, 74.4/scale+offset/1.5);
 path.addPoint(86.8/scale+offset, 65.5/scale+offset/1.5);
 path.addPoint(110.9/scale+offset, 63.4/scale+offset/1.5);
 path.addPoint(134.7/scale+offset, 67.1/scale+offset/1.5);
 path.addPoint(159.1/scale+offset, 75.4/scale+offset/1.5);
 path.addPoint(181.1/scale+offset, 91.7/scale+offset/1.5);
 path.addPoint(202/scale+offset, 118.4/scale+offset/1.5);
 path.addPoint(216.2/scale+offset, 141.9/scale+offset/1.5);
 
 //Macan
 path.addPoint(111.9/scale+offset, 61.7/scale+offset/1.5);
 path.addPoint(140.7/scale+offset, 61.7/scale+offset/1.5);
 path.addPoint(165.9/scale+offset, 73.3/scale+offset/1.5);
 path.addPoint(182.6/scale+offset, 86.9/scale+offset/1.5);
 path.addPoint(200.4/scale+offset, 114.1/scale+offset/1.5);
 path.addPoint(213/scale+offset, 134/scale+offset/1.5);
 path.addPoint(219.3/scale+offset, 156.5/scale+offset/1.5);
 path.addPoint(223/scale+offset, 176.4/scale+offset/1.5);
 path.addPoint(216.2/scale+offset, 188.5/scale+offset/1.5);
 path.addPoint(167.5/scale+offset, 193.7/scale+offset/1.5);
 path.addPoint(106.7/scale+offset, 190.6/scale+offset/1.5);
 path.addPoint(65.9/scale+offset, 179.6/scale+offset/1.5);
 path.addPoint(49.6/scale+offset, 168.1/scale+offset/1.5);
 path.addPoint(44.4/scale+offset, 142.9/scale+offset/1.5);
 path.addPoint(44.4/scale+offset, 120.4/scale+offset/1.5);
 path.addPoint(53.8/scale+offset, 101/scale+offset/1.5);
 path.addPoint(66.4/scale+offset, 80.9/scale+offset/1.5);
 path.addPoint(91.5/scale+offset, 68.6/scale+offset/1.5);
 
 //Cayenne
 path.addPoint(193.6/scale+offset, 122.4/scale+offset/1.5);
 path.addPoint(211.4/scale+offset, 141.8/scale+offset/1.5);
 path.addPoint(223/scale+offset, 160.1/scale+offset/1.5);
 path.addPoint(223/scale+offset, 170.6/scale+offset/1.5);
 path.addPoint(197.3/scale+offset, 188.4/scale+offset/1.5);
 path.addPoint(180/scale+offset, 194.2/scale+offset/1.5);
 path.addPoint(142.3/scale+offset, 194.2/scale+offset/1.5);
 path.addPoint(77.4/scale+offset, 188.9/scale+offset/1.5);
 path.addPoint(54.3/scale+offset, 185.3/scale+offset/1.5);
 path.addPoint(37.1/scale+offset, 175.8/scale+offset/1.5);
 path.addPoint(29.2/scale+offset, 164.3/scale+offset/1.5);
 path.addPoint(29.2/scale+offset, 146/scale+offset/1.5);
 path.addPoint(37.1/scale+offset, 117.2/scale+offset/1.5);
 path.addPoint(47.5/scale+offset, 100.4/scale+offset/1.5);
 path.addPoint(59.1/scale+offset, 87.9/scale+offset/1.5);
 path.addPoint(73.7/scale+offset, 79.5/scale+offset/1.5);
 path.addPoint(92/scale+offset, 79.5/scale+offset/1.5);
 path.addPoint(113.5/scale+offset, 79.5/scale+offset/1.5);
 path.addPoint(136/scale+offset, 85.2/scale+offset/1.5);
 path.addPoint(158/scale+offset, 96.8/scale+offset/1.5);
 path.addPoint(175.8/scale+offset, 107.2/scale+offset/1.5);
 
 718 <polygon class="st0" points="228.3,158.1 228.3,171.2 219.9,179.1 159.2,181.2 114.7,175.9 67,164.4 47.7,152.4 35.6,128.8 
 35.6,98.9 43.5,67.5 59.2,46.1 80.6,36.6 111,36.6 135.6,46.6 166.5,71.2 192.2,97.4 213.1,129.3 "/>
 
 911 <polygon class="st1" points="132.6,60.3 166.6,65 190.7,82.8 208,109.5 208,143.1 198,178.4 170.3,201.7 138.9,213.8 102.7,211.7 
 68.7,193.3 49.3,168.2 46.7,137 54,106.9 77.6,82.8 105.3,66.1 "/>
 
 Panamera <polygon class="st0" points="226.6,162.9 231.3,176 226.6,183.3 207.3,190 177.4,194.8 132.9,192.2 98.8,187.5 67.4,178.9 
 48.6,167.1 44.4,157.6 38.1,133.6 40.7,110 52.2,87.5 67.4,74.4 86.8,65.5 110.9,63.4 134.7,67.1 159.1,75.4 181.1,91.7 202,118.4 
 216.2,141.9 "/>
 Macan <polygon class="st1" points="111.9,61.7 140.7,61.7 165.9,73.3 182.6,86.9 200.4,114.1 213,134 219.3,156.5 223,176.4 216.2,188.5 
 167.5,193.7 106.7,190.6 65.9,179.6 49.6,168.1 44.4,142.9 44.4,120.4 53.8,101 66.4,80.9 91.5,68.6 "/>
 Cayenne <polygon class="st0" points="193.6,122.4 211.4,141.8 223,160.1 223,170.6 197.3,188.4 180,194.2 142.3,194.2 77.4,188.9 
 54.3,185.3 37.1,175.8 29.2,164.3 29.2,146 37.1,117.2 47.5,100.4 59.1,87.9 73.7,79.5 92,79.5 113.5,79.5 136,85.2 158,96.8 
 175.8,107.2 "/>
 
 */

void newVehicle(float x, float y) {
  float maxspeed = random(15, 40);
  float maxforce = 0.7;
  vehicles.add(new Vehicle(new PVector(x, y), maxspeed, maxforce));
}

void keyPressed() {
  if (key == 'd') {
    debug = !debug;
  }
}

void mousePressed() {
  newVehicle(mouseX, mouseY);
}

