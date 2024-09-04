/*
I denne opgave skal du arbejde med at tilføje værdier til variable som er erklæret et andet sted i koden
 
 4.a tag fat i sketchen fra Task 3 og tilføj en setup metode.
 4.b I setup metoden, tildel værdier til de variable du har erklæret i det globale scope.
 4.c Med printLn kommandoen, udskriv alle variablene, med et label foran. Fx. sådan her for variablen address: println("Adresse: "+address);
 4.d Tildel helt nye værdier til variablene, og udskriv dem igen. Genbrug evt dine println kommandoer.
 4.e Tildel nye værdier til variablene, men som tilføjelser - dvs. uden at overskrive det der allerede er gemt i variablene. Udskriv dem igen. Genbrug evt dine println kommandoer.
 4.f Tæl alle de numeriske variable op med 1. Udskriv.
 4.g Tæl alle de numeriske variable op med 3. Udskriv.
 4.h Tæl alle de numeriske variable ned med 1. Udskriv.
*/

//Global variables
String address;
int additionResult;
float divisionResult;
String messageForUser;

void setup() {
  // 4.b
  address = "Firskovvej 18, 2800 Kongens Lyngby";
  additionResult = 2 + 3;
  divisionResult = 2f / 3f;
  messageForUser = "Hello! Nice to meet you.";
  
  // 4.c
  println("Assignment: 4.c");
  println("Address: " + address);
  println("Addition result: " + additionResult);
  println("Division result: " + divisionResult);
  println("Message: " + messageForUser);
  println();
  
  // 4.d
  address = "Lautrupparken 40, 2750 Ballerup";
  additionResult = 22 + 33;
  divisionResult = 22f / 33f;
  messageForUser = "Goodbye! Have a nice day.";
  
  println("Assignment: 4.d");
  println("Address: " + address);
  println("Addition result: " + additionResult);
  println("Division result: " + divisionResult);
  println("Message: " + messageForUser);
  println();
  
  // 4.e
  address += ", Danmark";
  additionResult += 44;
  divisionResult /= 44f;
  messageForUser += " See you tomorrow.";
  
  println("Assignment: 4.e");
  println("Address: " + address);
  println("Addition result: " + additionResult);
  println("Division result: " + divisionResult);
  println("Message: " + messageForUser);
  println();
  
  // 4.f
  additionResult++;
  divisionResult++;
  
  println("Assignment: 4.f");
  println("Addition result: " + additionResult);
  println("Division result: " + divisionResult);
  println();
  
  // 4.g
  additionResult += 3;
  divisionResult += 3;
  
  println("Assignment: 4.g");
  println("Addition result: " + additionResult);
  println("Division result: " + divisionResult);
  println();
  
  // 4.h
  additionResult--;
  divisionResult--;
  
  println("Assignment: 4.h");
  println("Addition result: " + additionResult);
  println("Division result: " + divisionResult);
  println();
}
