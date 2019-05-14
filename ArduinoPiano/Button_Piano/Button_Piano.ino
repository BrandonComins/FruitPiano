void setup() {
  Serial.begin(9600);
  
}

void loop() {
  if (analogRead(A0) < 800){
    Serial.println("0");
    delay(5000);
  }
  else if (analogRead(A1) < 800)
  {
    Serial.println("1");
    delay(5000);
  }
  else if (analogRead(A2) < 800)
  {
    Serial.println("2");
    delay(5000);
  }
  else if (analogRead(A3) < 800)
  {
    Serial.println("3");
    delay(5000);
  }
  else if (analogRead(A4) < 800)
  {
    Serial.println("4");
    delay(5000);
  }
  else if (analogRead(A5) < 900)
  {
    Serial.println("5");
    delay(5000);
  }

}


