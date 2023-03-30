#include <SoftwareSerial.h>
#include <String.h>

SoftwareSerial bluetoothSerial(10,11);
SoftwareSerial espSerial(5,6);

int buzzer = 8;

void setup() {
  
  Serial.begin(9600);
  bluetoothSerial.begin(9600);
  espSerial.begin(115200);
  pinMode(buzzer, OUTPUT);

}

void loop() {
  
  String espMessage;
  espMessage = getEspResponse();
  Serial.print(espMessage);
  if(espMessage.equals("0")){
    activateBuzzer();
  }

}

String getEspResponse(){

  String inputString = "";
  while(espSerial.available()==0){}

  while (espSerial.available()) {
    char c = espSerial.read();
    inputString += c;
    if(c == '0'){
      activateBuzzer();
    }
  }
  return inputString;
}

void activateBuzzer(){
  for(int i=0; i< 3; i++){
    digitalWrite(buzzer, HIGH);
    delay(100);
    digitalWrite(buzzer,LOW);
    delay(100);
  }
}
