/*
Vi fortsætter med at arbejde på sketchen fra mappen TaskFive. Vi skal ændre koden, så hver række af cirkler tegnes i en forskellig, tilfældig farve.
 
 6.a erklær tre variable af typen int i det globale scope; én for hver af de tre farver rød, grøn og blå.
 6.b i setup-metoden skal du tildele værdier til de tre variable, så de tilsammen repræsenterer farven hvid.
 6.c i draw-metoden skal du bruge en conditional assignment (betinget tildeling) til at ændre farve-variablene, men kun hvis vi er i gang med at tegne den første cirkel i en række.
 */

// Global variables
int circleSize;
int numberOfCircles;
int x;
int y;
int counter = 0;
int rowCounter = 0;
int red;
int green;
int blue;

void setup() {
  size(400, 400);

  numberOfCircles = 30;
  circleSize = width/numberOfCircles;
  ellipseMode(CORNER);
  red = 255;
  green = 255;
  blue = 255;
}

void draw() {
  x = circleSize*counter;
  y = circleSize*rowCounter;

  // Un-comment this line after completing step 6.a
  fill(red, green, blue);

  ellipse(x, y, circleSize, circleSize);

  // Explaining conditional assignments.
  // First part before the ?-mark, is a conditional.
  // If this is true, the value after the ?-mark will be assigned.
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;

  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0

  //Add the code for 6.c here
  if (counter == 0) {
    red = (int)random(0,255);
    green = (int)random(0,255);
    blue = (int)random(0,255);    
  }
  else {
    red = 255;
    green = 255;
    blue = 255;
  }
}
