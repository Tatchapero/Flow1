/*
I denne opgave skal du arbejde på sketchen, som ligger i mappen TaskFive
 
 5.a erklær variablen circleSize som bruges i setup-metoden
 5.b erklær variablen numberOfCircles som bruges i både setup- og draw-metoden.
 5.c erklær variablene x og y, som bruges i draw-metoden.
 5.d initialiser de to counter-variable, som bruges i draw-metoden, så de har værdien 0.
 */

/*
 The code in this sketch will not compile, as it referes to varables which have not yet been declared
 Please complete task 5 to get this to compile.
 */

// Global variables
int circleSize;
int numberOfCircles;
int x;
int y;
int counter = 0;
int rowCounter = 0;

void setup() {
  size(400, 400);

  numberOfCircles = 30;
  circleSize = width/numberOfCircles;
  ellipseMode(CORNER);
}
void draw() {
  x = circleSize*counter;
  y = circleSize*rowCounter;

  // Un-comment this line after completing step 6.a
  // fill(red,green,blue);

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
}
