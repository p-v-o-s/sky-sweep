/*
 Autonomous control of a KAP rig with servos for tilt and pan (pan servo is continuous rotation). 
 Tilt positions are set in arrays. 
 Eight modes (regimes of pan/tilt/shoot) can be selected via tactile switch as sketch starts (< 1 second after power or reset).
 Three LEDs encode Modes 0 through 7 in binary.
 A pulse is sent to the USB port of Canon PowerShots running CHDK and an LED on the Nano is lit for the duration of the pulse.
 CHDK must be active on the camera with remote shutter enabled (one push, quick).
 Timing will depend on the particular servos and battery strength and can be adjusted by changing the delay values in this sketch.
*/

#include <Servo.h>                          // Include the servo library

// For tilt control
Servo tiltServo;                            // Assign tilt servo
int tiltAngle5[]= {127, 95, 70, 45, 20};    // Establish an array for five tilt positions
int tiltAngle4[]= {127, 86, 53, 20};        // Establish an array for four tilt positions
int tiltAngle3[]= {100, 70, 40};            // Establish an array for three tilt positions

// For pan control
Servo panServo;                             // Assign pan servo
int pan;                                    // variable for pan positions

// For camera control
int shutterPin0 = A0;                       // Assign ShutterPin0 to a pin number
int shutterPin1 = A1;                       // Assign ShutterPin1 to a pin number

// For mode switching
int mode = 0;                               // variable: which of the three modes is active
int wait = 1;                               // variable: 0 = keep waiting, 1 = stop waiting
int switchPin = 12;                         // switch is connected to pin 12
int pinStatus;                              // variable for reading the pin status (High or LOW)

//For LED control
int LEDPin = 13;                           // Assign LEDPin on the Nano to a pin number
int LEDPinA = A4;                          // Assign LEDPin on the SkyShield to a pin number
int LEDPinB = A3;                          // Assign LEDPin on the SkyShield to a pin number
int LEDPinC = A2;                          // Assign LEDPin on the SkyShield to a pin number

void setup()                     
{
  pinMode(switchPin, INPUT);               // sets the pin named switchPin as an input pin
  pinMode(shutterPin1, OUTPUT);            // sets the pin named shutterPin1 as an output pin
  pinMode(shutterPin0, OUTPUT);            // sets the pin named shutterPin0 as an output pin  
  pinMode(LEDPin, OUTPUT);                 // sets the pin named LEDPin as an output pin
  pinMode(LEDPinA, OUTPUT);                // sets the pin named LEDPinA as an output pin
  pinMode(LEDPinB, OUTPUT);                // sets the pin named LEDPinB as an output pin
  pinMode(LEDPinC, OUTPUT);                // sets the pin named LEDPinC as an output pin
  tiltServo.attach(9);                     // attaches the servo named tiltServo to pin D9
  panServo.attach(6);                      // attaches the servo named panServo to pin D6

// Select mode by holding the tactile button (within a second of start or reset) until LEDs indicate desired mode (0-7 in binary)
    while(wait == 1)                         // Wait for button presses as long as the button is pressed
    {
      digitalWrite(LEDPin, HIGH);            // send current to the LED on the Nano
      delay(400);                            // allow a moment to push the button after power-on or reset
      analogWrite(LEDPinA, 0);               // Turn off all 3 LEDs on the SkyShield
      analogWrite(LEDPinB, 0);               
      analogWrite(LEDPinC, 0);              
      pinStatus = digitalRead(switchPin);    // read the state of the SwitchPin and store it in pinStatus
      if (pinStatus == LOW)                  // if the button is currently pressed (for pull up resistor)...
      {
        mode++;                                // increment to the next mode
        if(mode == 8) mode = 0;                // don't increment past 7, but cycle through 0-7    
           if(mode == 1)                       // (no LEDs are lit for mode 0)
             analogWrite(LEDPinA, 255);        // send current to LED on the SkyShield
           if(mode == 2)
             analogWrite(LEDPinB, 255);        // send current to LED on the SkyShield
           if(mode == 3){
             analogWrite(LEDPinA, 255);        // send current to LED on the SkyShield
             analogWrite(LEDPinB, 255);}       // send current to LED on the SkyShield
           if(mode == 4)
             analogWrite(LEDPinC, 255);        // send current to LED on the SkyShield
           if(mode == 5){
             analogWrite(LEDPinA, 255);        // send current to LED on the SkyShield
             analogWrite(LEDPinC, 255);}       // send current to LED on the SkyShield
           if(mode == 6){
             analogWrite(LEDPinB, 255);        // send current to LED on the SkyShield
             analogWrite(LEDPinC, 255);}       // send current to LED on the SkyShield
           if(mode == 7){
             analogWrite(LEDPinA, 255);        // send current to LED on the SkyShield
             analogWrite(LEDPinB, 255);        // send current to LED on the SkyShield
             analogWrite(LEDPinC, 255);}       // send current to LED on the SkyShield    
      }   
      else  wait = 0;                        // else if the button is NOT currently pressed don't wait for more presses
      digitalWrite(LEDPin, LOW);             // turn off Nano LED 
      delay(200);                            // So you can see the Nano LED blink
    }  
}

void loop()               
{ 
   if(mode == 0)                             // Slow 360 8x4: 8 pan positions nested within 4 tilt positions for 24 mm lens
     {
       for(int a = 0; a <=3 ; a = a + 1)     // run through the array of tilt angles
          {   
          tiltServo.write(tiltAngle4[a]);    // tilt to next angle in the array          
          delay(1000);                       // wait after tilt servo motion to take a photo   
             if(a < 1) delay(300);           // wait longer during the big tilt back up to the first position               
             pan = 0;                        // inititalize the pan position variable
             while (pan < 8)                 // pan to each position
             {
             pan++;                           // increment pan variable
             panServo.write(16);              // Start the pan servo turning at the designated speed and direction.
             delay(285);                      // let the servo turn for a number of milleseconds  
             panServo.write(90);              // stop the servo and hold its position  
             delay(1200);                     // wait for the rig to settle before triggering shutter
                                              // Shutter Control:  
             digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
             digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
             delay(250);                      // send current to the USB port for this long  
             digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
             digitalWrite(LEDPin, LOW);       // turn LED off
             delay(1100);                     // wait for the camera to finish taking photo before next servo motion   
             }
          } 
       }
    if(mode == 1)                            // Fast 360 8x4: 8 pan positions nested within 4 tilt positions for 24 mm lens
       {
       analogWrite(LEDPinA, 255);            // send current to LED on the SkyShield

       for(int a = 0; a <=3 ; a = a + 1)     // run through the array of 5 tilt angles
          {   
          tiltServo.write(tiltAngle4[a]);    // tilt to next angle in the array          
          delay(700);                        // wait (1 second) after tilt servo motion to take a photo   
             if(a < 1) delay(300);           // wait longer during the big tilt back up to the first position               
             pan = 0;                        // inititalize the pan position variable
             while (pan < 8)                 // pan to each position
             {
             pan++;                           // increment pan variable
             panServo.write(16);              // Start the pan servo turning at the designated speed and direction.
             delay(285);                      // let the servo turn for a number of milleseconds  
             panServo.write(90);              // stop the servo and hold its position  
             delay(1000);                     // wait for the rig to settle before triggering shutter
                                              // Shutter Control:  
             digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
             digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
             delay(250);                      // send current to the USB port for this long    
             digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
             digitalWrite(LEDPin, LOW);       // turn LED off
             delay(900);                      // wait for the camera to finish taking photo before next servo motion   
             }
          } 
          analogWrite(LEDPinA, 0);            // stop current to an LED on the SkyShield
       }       
       
    if(mode == 2)                            // Slow 360 9x5: 9 pan positions nested within 5 tilt positions for 28 mm lens
       {
       analogWrite(LEDPinB, 255);            // send current to LED on the SkyShield
       for(int a = 0; a <=4 ; a = a + 1)     // run through the array of 5 tilt angles
          {   
          tiltServo.write(tiltAngle5[a]);    // tilt to next angle in the array          
          delay(1200);                       // wait after tilt servo motion to take a photo   
             if(a < 1) delay(500);           // wait longer during the big tilt back up to the first position               
             pan = 0;                        // inititalize the pan position variable
             while (pan < 9)                 // pan to each position
             {
             pan++;                           // increment pan variable
             panServo.write(16);              // Start the pan servo turning at the designated speed and direction.
             delay(230);                      // let the servo turn for a number of milleseconds   
             panServo.write(90);              // stop the servo and hold its position  
             delay(1300);                     // wait for the rig to settle before triggering shutter          
                                              // Shutter Control:  
             digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
             digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
             delay(250);                      // send current to the USB port for this long 
             digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
             digitalWrite(LEDPin, LOW);       // turn LED off
             delay(1300);                     // wait for the camera to finish taking photo before next servo motion   
             }
          } 
          analogWrite(LEDPinB, 0);            // stop current to an LED on the SkyShield
        }
        
    if(mode == 3)                             // Fast 360 9x5: 9 pan positions nested within 5 tilt positions for 28 mm lens
       {
       analogWrite(LEDPinA, 255);             // send current to LED on the SkyShield
       analogWrite(LEDPinB, 255);             // send current to LED on the SkyShield
       for(int a = 0; a <=4 ; a = a + 1)      // run through the array of tilt angles
          {   
          tiltServo.write(tiltAngle5[a]);     // tilt to next angle in the array          
          delay(900);                         // wait after tilt servo motion to take a photo   
             if(a < 1) delay(400);            // wait longer during the big tilt back up to the first position               
             pan = 0;                         // inititalize the pan position variable
             while (pan < 9)                  // pan to each position
             {
             pan++;                           // increment pan variable
             panServo.write(16);              // Start the pan servo turning at the designated speed and direction.
             delay(230);                      // let the servo turn for a number of milleseconds   
             panServo.write(90);              // stop the servo and hold its position  
             delay(900);                      // wait for the rig to settle before triggering shutter          
                                              // Shutter Control:  
             digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
             digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
             delay(250);                      // send current to the USB port for this long 
             digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
             digitalWrite(LEDPin, LOW);       // turn LED off
             delay(900);                      // wait for the camera to finish taking photo before next servo motion   
             }
          } 
          analogWrite(LEDPinA, 0);            // send current to LED on the SkyShield
          analogWrite(LEDPinB, 0);            // stop current to an LED on the SkyShield
        }
  
    if(mode == 4)                          // Fast 360 5x9: 5 tilt positions nested within 9 pan positions 
       {  
       analogWrite(LEDPinC, 255);          // send current to LED on the SkyShield
       panServo.write(16);                 // Start the pan servo turning at the designated speed and direction.
       delay(230);                         // let the servo turn for a number of milleseconds    
       panServo.write(90);                 // stop the servo and hold its position
             
       for(int a=0; a<=4; a = a + 1)       // run through the array of tilt angles
          {   
          tiltServo.write(tiltAngle5[a]);  // tilt to next angle in the array          
          delay(900);                      // wait after tilt servo motion to take a photo   
               if(a<1) delay(300);         // wait longer during the big tilt back up to the first position                        
                                           // Shutter Control:   
          digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
          digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
          delay(200);                      // send current to the USB port for this long 
          digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
          digitalWrite(LEDPin, LOW);       // turn LED off
          delay(2000);                     // wait for the camera to finish taking photo before next servo motion   
          } 
          analogWrite(LEDPinC, 0);         // stop current to an LED on the SkyShield
       } 
       
   if(mode == 5)                           // Slow 360 5x9: 5 tilt positions nested within 9 pan positions 
        {
        analogWrite(LEDPinA, 255);          // send current to LED on the SkyShield
        analogWrite(LEDPinC, 255);          // send current to LED on the SkyShield
        panServo.write(16);                 // Start the pan servo turning at the designated speed and direction.
        delay(230);                         // let the servo turn for a number of milleseconds  
        panServo.write(90);                 // stop the servo and hold its position
             
        for(int a=0; a<=4; a = a + 1)       // run through the array of tilt angles
           {   
           tiltServo.write(tiltAngle5[a]);  // tilt to next angle in the array          
           delay(1000);                     // wait (1 second) after tilt servo motion to take a photo 
                if(a<1) delay(300);         // wait longer during the big tilt back up to the first position                             
                                            // Shutter Control:   
           digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
           digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
           delay(250);                      // send current to the USB port for this long 
           digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
           digitalWrite(LEDPin, LOW);       // turn LED off
           delay(2500);                     // wait for the camera to finish taking photo before next servo motion   
           } 
           analogWrite(LEDPinA, 0);         // stop current to an LED on the SkyShield
           analogWrite(LEDPinC, 0);         // STOP current to an LED on the SkyShield
       }
           
    if(mode == 6)                           // 180 panorama 4x3: 4 pan positions nested within 3 tilt positions for 28 mm lens
        {
        analogWrite(LEDPinB, 255);          // send current to LED on the SkyShield
        analogWrite(LEDPinC, 255);          // send current to LED on the SkyShield

       for(int a = 0; a <=2 ; a = a + 1)     // run through the array of tilt angles
          {   
          tiltServo.write(tiltAngle3[a]);    // tilt to next angle in the array          
          delay(1000);                       // wait (1 second) after tilt servo motion to take a photo   
             if(a < 1) delay(400);           // wait longer during the big tilt back up to the first position               
             pan = 0;                        // inititalize the pan position variable
             while (pan < 4)                 // pan to each position
             {
                                              // Shutter Control:  
             digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
             digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
             delay(250);                      // send current to the USB port for this long 
             digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
             digitalWrite(LEDPin, LOW);       // turn LED off
             delay(1100);                     // wait for the camera to finish taking photo before next servo motion   
             
               if (pan < 3){                    // if another pan movement is needed   
               panServo.write(16);              // Start the pan servo turning at the designated speed and direction.
               delay(255);                      // let the servo turn for a number of milleseconds  
               panServo.write(90);              // stop the servo and hold its position  
               delay(1200);                     // wait for the rig to settle before triggering shutter
               }
               pan++;                           // increment the pan position variable 
             }
             panServo.write(164);             // else, move the pan servo back toward the starting position.
             delay(795);                      // let the servo turn for a number of milleseconds  
             panServo.write(90);              // stop the servo and hold its position  
             delay(1200);                     // wait for the rig to settle before triggering shutter
           } 
           analogWrite(LEDPinB, 0);         // stop current to an LED on the SkyShield
           analogWrite(LEDPinC, 0);         // STOP current to an LED on the SkyShield
       }
                  
    if(mode == 7)                            // 180+ degree 4x4: 4 pan positions nested within 4 tilt positions for 24 mm lens (with nadir and above horizon)
        {
        analogWrite(LEDPinA, 255);           // send current to LED on the SkyShield
        analogWrite(LEDPinB, 255);           // send current to LED on the SkyShield
        analogWrite(LEDPinC, 255);           // send current to LED on the SkyShield

       for(int a = 0; a <=3 ; a = a + 1)     // run through the array of tilt angles
          {   
          tiltServo.write(tiltAngle4[a]);    // tilt to next angle in the array          
          delay(1000);                       // wait (1 second) after tilt servo motion to take a photo   
             if(a < 1) delay(500);           // wait longer during the big tilt back up to the first position         
             
             pan = 0;                        // inititalize the pan position variable
             while (pan < 4)                 // pan to each position
             {
                                              // Shutter Control:  
             digitalWrite(LEDPin, HIGH);      // send current to the LED on the Nano
             digitalWrite(shutterPin0, HIGH); // start to send current to the camera USB port
             delay(250);                      // send current to the USB port for this long 
             digitalWrite(shutterPin0, LOW);  // drop the current to the USB port to zero
             digitalWrite(LEDPin, LOW);       // turn LED off
             delay(1100);                     // wait for the camera to finish taking photo before next servo motion   
             
               if (pan < 3){                    // if another pan movement is needed   
               panServo.write(16);              // Start the pan servo turning at the designated speed and direction.
               delay(255);                      // let the servo turn for a number of milleseconds   
               panServo.write(90);              // stop the servo and hold its position  
               delay(1200);                     // wait for the rig to settle before triggering shutter
               }
               pan++;                           // increment the pan position variable 
             }
             panServo.write(164);             // else, move the pan servo back toward the starting position.
             delay(795);                      // let the servo turn for a number of milleseconds   
             panServo.write(90);              // stop the servo and hold its position  
             delay(1200);                     // wait for the rig to settle before triggering shutter
          } 
        analogWrite(LEDPinA, 0);              // stop current to LED on the SkyShield
        analogWrite(LEDPinB, 0);              // stop current to LED on the SkyShield
        analogWrite(LEDPinC, 0);              // stop current to LED on the SkyShield
       }
}
      
