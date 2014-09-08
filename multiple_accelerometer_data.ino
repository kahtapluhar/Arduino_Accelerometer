/*
 * Program to gain analogue input from the Arduino
 * Reference: Wiki Page: http://www.geeetech.com/wiki/index.php/LilyPad_Accelerometer_ADXL335
 */

 const int analogInPinA0 = A0; //X axis
 const int analogInPinA1 = A1; //Y axis
 const int analogInPinA2 = A2; //Z axis 

 const int analogInPinA3 = A3; //X axis
 const int analogInPinA4 = A4; //Y axis
 const int analogInPinA5 = A5; //Z axis 
 
 
 void setup(){
    Serial.begin(9600); 	//initialise connection at 9600 bps
 }

 void loop(){
  float x1 = analogRead(analogInPinA0); 
  float y1= analogRead(analogInPinA1);
  float z1= analogRead(analogInPinA2);
  
  float x2 = analogRead(analogInPinA3); 
  float y2= analogRead(analogInPinA4);
  float z2= analogRead(analogInPinA5);
  
  float zero_G =512;  //zero_G  = no acceleration.  Subtract this value from the sensor reading to
 		      //get a shifted sensor reading.
  float scale =102.3; //No. of units when axis changes by 1G
 		      //Divide the shifted sensor reading by scale to get acceleration in Gs.

 //Reading from sensor 1 (cloth)
 Serial.println(((float)x1 - zero_G)/scale);
 Serial.println(((float)y1 - zero_G)/scale);
 Serial.println(((float)z1 - zero_G)/scale);
 
 //Reading from sensor 2 (non cloth) 
 Serial.println(((float)x2 - zero_G)/scale);
 Serial.println(((float)y2 - zero_G)/scale);
 Serial.println(((float)z2 - zero_G)/scale);
 
 delay(50);
}
