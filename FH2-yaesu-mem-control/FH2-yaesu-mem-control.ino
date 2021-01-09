/****
 * READ BEFORE USE AND USE AT YOUR OWN RISK
 * 
 * This device emulates yaesu FH2 external keyboard MEM buttons as automated voice keyes based on internal voice memories
 * 
 * Compatible with every Yaesu RIG which uses TUN/LIN jack and MiniDIN PTT output
 * 
 * For proper function disable any LAMP functions in Yaesu radio menu !!!!! For YAESU FT991A set Menu #141 Tuner to anything else but no LAMP
 * 
 * See more info to FH2 keyboard emulation: https://github.com/rfrht/RFH-2/blob/master/RFH-2.pdf
 * 
 * See included schematic diagram or fritzing sketch
 * 
 * VY 73 de Tomas OM5AST
 */

// PTT input - negative logic
#define PTT_INPUT 2 // PTT input from radio

// STOP CQ button - interrupt input - negative logic
#define STOP_BUTTON 3 // STOP button

// Yaesu memory buttons - negative logic
#define MEM1_BUTTON 4 // MEM1 button
#define MEM2_BUTTON 5 // MEM2 button
#define MEM3_BUTTON 6 // MEM3 button
#define MEM4_BUTTON 7 // MEM4 button
#define MEM5_BUTTON 8 // MEM5 button

// delay swhitch - negative logic
#define DELAY_SWITCH 10 // delay 3000 or 5000 ms - if jumper is in then long / if no jumper then short

// skip timer jumper - negative logic - currently not in use
#define SKIP_TIMER 11 // skip timer - behave as normal FH2 keyboard

// Yaesu FH2 simulated output - negative logic
#define MEM1_OUT A1 // MEM1 - 866 OHM
#define MEM2_OUT A2 // MEM2 - 1330 OHM
#define MEM3_OUT A3 // MEM3 - 1820 OHM
#define MEM4_OUT A4 // MEM4 - 2490 OHM
#define MEM5_OUT A5 // MEM5 - 3240 OHM

// STOP LED
#define STOP_LED A6 // this LED is on when STOP button has been pressed

// PLAY LED
#define PLAY_LED A7 // this LED is on when memory play is in progress

// delay between messages - 3000ms
#define DELAY_BETWEEN_MESSAGES_SHORT 3000

// delay between messages - 5000ms
#define DELAY_BETWEEN_MESSAGES_LONG 5000

// initialize vars
bool button1Pressed = false;
bool button2Pressed = false;
bool button3Pressed = false;
bool button4Pressed = false;
bool button5Pressed = false;
bool alreadyStarted1Mem = false;
bool alreadyStarted2Mem = false;
bool alreadyStarted3Mem = false;
bool alreadyStarted4Mem = false;
bool alreadyStarted5Mem = false;

// button states
bool mem1state = HIGH;
bool mem2state = HIGH;
bool mem3state = HIGH;
bool mem4state = HIGH;
bool mem5state = HIGH;

// other states
bool pttState = HIGH;
bool skipTimerState = HIGH;

// delay
int delayTime = 0;

void setup(){ 

    // set buttons as input with pull-up
    pinMode(MEM1_BUTTON, INPUT_PULLUP);
    pinMode(MEM2_BUTTON, INPUT_PULLUP);
    pinMode(MEM3_BUTTON, INPUT_PULLUP);
    pinMode(MEM4_BUTTON, INPUT_PULLUP);
    pinMode(MEM5_BUTTON, INPUT_PULLUP);

    // set stop button as input with pull-up
    pinMode(STOP_BUTTON, INPUT_PULLUP);

    // set PTT as input with pull-up
    pinMode(PTT_INPUT, INPUT_PULLUP);

    // set delay switch jumper as input with pull-up
    pinMode(DELAY_SWITCH, INPUT_PULLUP);

    // set skip timer jumper as input with pull-up
    pinMode(SKIP_TIMER, INPUT_PULLUP);

    // set mem pins as outputs
    pinMode(MEM1_OUT, OUTPUT);
    pinMode(MEM2_OUT, OUTPUT);
    pinMode(MEM3_OUT, OUTPUT);
    pinMode(MEM4_OUT, OUTPUT);
    pinMode(MEM5_OUT, OUTPUT);

    // LEDs
    pinMode(STOP_LED, OUTPUT);
    pinMode(PLAY_LED, OUTPUT);
    
    // init buttons with FALSE
    digitalWrite(MEM1_OUT, LOW);
    digitalWrite(MEM2_OUT, LOW);
    digitalWrite(MEM3_OUT, LOW);
    digitalWrite(MEM4_OUT, LOW);
    digitalWrite(MEM5_OUT, LOW);

    // init LEDs
    digitalWrite(PLAY_LED, LOW);
    digitalWrite(STOP_LED, LOW);

    // assign STOP button interrupt
    attachInterrupt(digitalPinToInterrupt(STOP_BUTTON), stopButtonPressed, LOW);

    // check for delay setup on startup
    delayTime = (digitalRead(DELAY_SWITCH) ? DELAY_BETWEEN_MESSAGES_SHORT : DELAY_BETWEEN_MESSAGES_LONG);  
 }
 
void loop() {

  // read buttons
  mem1state = digitalRead(MEM1_BUTTON);
  mem2state = digitalRead(MEM2_BUTTON);
  mem3state = digitalRead(MEM3_BUTTON);
  mem4state = digitalRead(MEM4_BUTTON);
  mem5state = digitalRead(MEM5_BUTTON);

  // read other inputs
  pttState = digitalRead(PTT_INPUT); 
  skipTimerState = digitalRead(SKIP_TIMER); // currently not in use

  // emulate FH2 without timing functions
  if (skipTimerState == LOW) {

      // inputs passthru with negation
      digitalWrite(MEM1_OUT, !mem1state);
      digitalWrite(MEM2_OUT, !mem2state);
      digitalWrite(MEM3_OUT, !mem3state);
      digitalWrite(MEM4_OUT, !mem4state);
      digitalWrite(MEM5_OUT, !mem5state);
    return;
  }

  if ((mem1state == LOW || button1Pressed) && pttState == HIGH)  // memory button pressed, but without PTT
    {
      button1Pressed = true;
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(PLAY_LED, HIGH);
      
      // check if first time play then delay
      if(alreadyStarted1Mem) {
        delay(delayTime);  
      }
        alreadyStarted1Mem = true;
        playMemory(MEM1_OUT);
     } 

  if ((mem2state == LOW || button2Pressed) && pttState == HIGH)  // memory button pressed, but without PTT
    {
      button2Pressed = true;
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(PLAY_LED, HIGH);
      
      // check if first time play then delay
      if(alreadyStarted2Mem) {
        delay(delayTime);  
      }
        alreadyStarted2Mem = true;
        playMemory(MEM2_OUT);
     } 

  if ((mem3state == LOW || button3Pressed) && pttState == HIGH)  // memory button pressed, but without PTT
    {
      button3Pressed = true;
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(PLAY_LED, HIGH);
      
      // check if first time play then delay
      if(alreadyStarted3Mem) {
        delay(delayTime);  
      }
        alreadyStarted3Mem = true;
        playMemory(MEM3_OUT);
     } 

  if ((mem4state == LOW || button4Pressed) && pttState == HIGH)  // memory button pressed, but without PTT
    {
      button4Pressed = true;
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(PLAY_LED, HIGH);
      
      // check if first time play then delay
      if(alreadyStarted4Mem) {
        delay(delayTime);  
      }
        alreadyStarted4Mem = true;
        playMemory(MEM4_OUT);
     } 


  if ((mem5state == LOW || button5Pressed) && pttState == HIGH)  // memory button pressed, but without PTT
    {
      button5Pressed = true;
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(PLAY_LED, HIGH);
      
      // check if first time play then delay
      if(alreadyStarted5Mem) {
        delay(delayTime);  
      }
        alreadyStarted5Mem = true;
        playMemory(MEM5_OUT);
     } 

  // check for PTT and stop memory play
  if (pttState == LOW) {
      stopMemory();
  }
   
}

// stop button interrupt
void stopButtonPressed(void) {
   button1Pressed = false; // no button pressed before
   button2Pressed = false;
   button3Pressed = false;
   button4Pressed = false;
   button5Pressed = false;
   alreadyStarted1Mem = false; // never started any memory
   alreadyStarted2Mem = false;
   alreadyStarted3Mem = false;
   alreadyStarted4Mem = false;
   alreadyStarted5Mem = false;
   stopMemory(); // stop memory play
   digitalWrite(STOP_LED, HIGH);
   digitalWrite(PLAY_LED, LOW);
   digitalWrite(LED_BUILTIN, LOW);
}

// play desired memory by memory constant
void playMemory(int memoryPosition) {
  digitalWrite(memoryPosition, HIGH);
  delay(50);
  stopMemory(); // stop all memories
}

// stop memory play - all memory pins to low
void stopMemory(void) {
  digitalWrite(MEM1_OUT, LOW);
  digitalWrite(MEM2_OUT, LOW);
  digitalWrite(MEM3_OUT, LOW);
  digitalWrite(MEM4_OUT, LOW);
  digitalWrite(MEM5_OUT, LOW);
  digitalWrite(PLAY_LED, LOW);
  digitalWrite(LED_BUILTIN, LOW);
}
