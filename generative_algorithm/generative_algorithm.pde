int x = 10;

void setup() {
  fullScreen();
  background(0);
  noStroke();
  fill(102);
}

void draw() {
  float randomSize = random(0,8);
  float randomPositionXNumber = generateRandomNumbers(true);
  float randomPositionYNumber = generateRandomNumbers(false);
 
  float randomOpacityNumber = random(0, 255);
  float randomRNumber = random(30, 210);
  float randomRadiusNumber = random(0,4);

  fill(randomRNumber, 20, 150, randomOpacityNumber);
  rect(randomPositionXNumber, randomPositionYNumber, randomSize, randomSize, randomRadiusNumber  ); 
}

float generateRandomNumbers(boolean coordinateX) {  
  if (coordinateX) {
    return random(width / 4, 3 * width / 4);
  } else {
    return random(height / 3, 2 * height / 3);
  }
}
