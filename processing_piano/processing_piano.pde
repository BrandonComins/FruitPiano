import processing.sound.*;

import processing.serial.*;

   Serial myPort;  
   String val;  
   SoundFile monkey;
   SoundFile kirby;
   SoundFile howl;
   SoundFile moo;
   SoundFile toad;
   SoundFile soLongGayBowser;
  

void setup()
{

  String portName = Serial.list()[2]; 
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n'); 
  
  monkey = new SoundFile(this, "monkey.mp3");
  kirby = new SoundFile(this, "monkey.mp3");
  howl = new SoundFile(this, "monkey.mp3");
  moo = new SoundFile(this, "monkey.mp3");
  toad = new SoundFile(this, "monkey.mp3");
  soLongGayBowser = new SoundFile(this, "monkey.mp3");
   
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
  if(val.equals("0")){
    monkey.play();
    trim(val);
    delay(3000);
  }
   if(val.equals("1")){
    howl.play();
    trim(val);
    delay(3000);
  }
     if(val.equals("2")){
    moo.play();
    trim(val);
    delay(3000);
  }
     if(val.equals("3")){
    toad.play();
    trim(val);
    delay(3000);
  }
     if(val.equals("4")){
    kirby.play();
    trim(val);
    delay(3000);
  }
     if(val.equals("5")){
    soLongGayBowser.play();
    trim(val);
    delay(3000);
  }
}
