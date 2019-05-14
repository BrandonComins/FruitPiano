import processing.sound.*;

import processing.serial.*;

   Serial myPort;  
   String val;  
   SoundFile monkey;

void setup()
{

  String portName = Serial.list()[2]; 
  monkey = new SoundFile(this, "monkey.mp3");
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n'); 
   
}

void draw()
{
  
}

void serialEvent(Serial myport){
  if ( myPort.available() > 0) { 
  val = (myPort.readStringUntil('\n'));  
  
  if (val != null) {
  val = trim(val);
  println(val);
  } 
 }
  if(val.equals("5")){
    monkey.play();
    trim(val);
    delay(5000);
  }
}
