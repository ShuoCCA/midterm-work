
import processing.serial.Serial;

// import arduino

Serial myPort;
String Val;
 int Value;






 void setup(){
 size(800,800);
background(0);
 
 String portName = Serial.list()[3];
 myPort = new Serial(this,portName,9600);
 
  ellipseMode(RADIUS);


 
 
 }
 
 void draw (){
 background(0);
  fill(200,0,200);
  textSize(100);
  
  
   
// printArray(Serial.list());
 
 if (myPort.available()>0)
 { Val = myPort.readStringUntil('\n');
 Value=myPort.read();
 print("Print Val (if) - ");
 //println(Val);
// text(Val,400,400); //some times it's not work, maybe because the processing can't get the right value?
 }
print("test-");
 println(Val);

text(Val,400,400);

//try {
//    int Vtest = Integer.valueOf(Val).intValue();
//    println("++"+Vtest);
//} catch (NumberFormatException e) {
//    e.printStackTrace();
//}

// int Vtest=Integer.valueOf(Val);

//rect(Vtest*0.5+10,Vtest*0.5+10,10,10);

 
 
 }