 /* RFID reader for ESP8266
 * 
 * Pin connections:
 * Vcc <-> 3V3 (o Vin(5V) según la versión del módulo)
 * RST (Reset) <-> D3
 * GND (Tierra) <-> GND
 * MISO (Master Input Slave Output) <-> D6
 * MOSI (Master Output Slave Input) <-> D7
 * SCK (Serial Clock) <-> D5
 * SS/SDA (Slave select) <-> D8
 * IRQ <-> D4
 * 
 * PCD (Proximity Coupling Device): NXP MFRC522 Contactless Reader IC
 * PICC (Proximity Integrated Circuit Card): A card or tag using the ISO 14443A interface, eg Mifare or NTAG203.
 * 
 * REFERENCES:
 * Code for just read the RFID
 * https://www.aranacorp.com/es/uso-de-un-modulo-rfid-con-un-esp8266/
 * 
 * Publish RFID MQTT
 * https://www.hackster.io/270906/mqtt-based-event-management-using-esp8266-and-rfid-678c54
 */

#include <PubSubClient.h>
#include <ESP8266WiFi.h>
#include <SPI.h>}
#include <MFRC522.h>

#define SS_PIN D8
#define RST_PIN D3
#define RFID_IRQ D4



// WiFi credentials.
//const char *ssid = "Vogolotope";
//const char *password = "makiavelo2142";
const char *ssid = "cel-aarongrt";// Put here your Wi-Fi SSID (Nombre de la red)
const char *password = "oag43021";// Put here your Wi-Fi password (Contraseña de la red)

// MQTT Broker
const char *mqtt_broker = "192.168.201.193";  //Dirección del Broker HiveMQ

const char *topic = "esp8266/rfid"; //topico
const char *mqtt_username = "equipo1"; //Usuario
const char *mqtt_password = "node-red"; //Contraseña
const int mqtt_port = 1883;

WiFiClient espClient;
PubSubClient client(espClient);

MFRC522 rfid(SS_PIN, RST_PIN); // Instance of the class

MFRC522::MIFARE_Key key;

// Init array that will store new NUID
byte nuidPICC[4];

char RfidTopic[4];


void setup() {
  // Set software serial baud to 115200;
  Serial.begin(115200);
  // connecting to a WiFi network
  WiFi.setSleepMode(WIFI_NONE_SLEEP);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.println("Connecting to WiFi..");
  }
  Serial.println("Connected to the WiFi network");
  //connecting to a mqtt broker
  client.setServer(mqtt_broker, mqtt_port);
  client.setCallback(callback);
  while (!client.connected()) {
      String client_id = "esp8266-client-cima";
      client_id += String(WiFi.macAddress());
      Serial.printf("The client %s connects to the public mqtt broker\n", client_id.c_str());
      if (client.connect(client_id.c_str(), mqtt_username, mqtt_password)) {
          Serial.println("Public mqtt broker connected");
      } else {
          Serial.print("failed with state ");
          Serial.print(client.state());
          delay(2000);
      }
  }
  //SPI init
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522
  Serial.println();
  Serial.print(F("Reader :"));
  rfid.PCD_DumpVersionToSerial();

  for (byte i = 0; i < 6; i++) {
    key.keyByte[i] = 0xFF;
  }
  Serial.println();
  Serial.println(F("This code scan the MIFARE Classic NUID."));
  Serial.print(F("Using the following key:"));
  printHex(key.keyByte, MFRC522::MF_KEY_SIZE);

  //pinMode(D8,OUTPUT); // sets digital pin 8 as output
}

void loop() {

  client.loop();
  
  // Reset the loop if no new card present on the sensor/reader. This saves the entire process when idle.
  if ( ! rfid.PICC_IsNewCardPresent())
    return;

  // Verify if the NUID has been readed
  if ( ! rfid.PICC_ReadCardSerial())
    return;

  Serial.print(F("PICC type: "));
  MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
  Serial.println(rfid.PICC_GetTypeName(piccType));

  // Check is the PICC of Classic MIFARE type
  if (piccType != MFRC522::PICC_TYPE_MIFARE_MINI &&
      piccType != MFRC522::PICC_TYPE_MIFARE_1K &&
      piccType != MFRC522::PICC_TYPE_MIFARE_4K) {
    Serial.println(F("Your tag is not of type MIFARE Classic."));
    return;
  }

  if (rfid.uid.uidByte[0] != nuidPICC[0] ||
      rfid.uid.uidByte[1] != nuidPICC[1] ||
      rfid.uid.uidByte[2] != nuidPICC[2] ||
      rfid.uid.uidByte[3] != nuidPICC[3] ) {
    Serial.println(F("A new card has been detected."));

    // Store NUID into nuidPICC array
    for (byte i = 0; i < 4; i++) {
      nuidPICC[i] = rfid.uid.uidByte[i];
      //Serial.print(nuidPICC[i], HEX);
    }
   char msg[50];
   msg[0]='\0';
   array_to_string(nuidPICC,4,msg);
   client.publish(topic, msg);
   Serial.print("Published!!!!!!!!!!");
    

    Serial.println(F("The NUID tag is:"));
    Serial.print(F("In hex: "));
    printHex(rfid.uid.uidByte, rfid.uid.size);
    Serial.println();
    Serial.print(F("In dec: "));
    printDec(rfid.uid.uidByte, rfid.uid.size);
    Serial.println();

    
  }
  else Serial.println(F("Card read previously."));

  // Halt PICC
  rfid.PICC_HaltA();

  // Stop encryption on PCD
  rfid.PCD_StopCrypto1();
}


/**
   Helper routine to dump a byte array as hex values to Serial.
*/
void printHex(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
    Serial.print(buffer[i], HEX);
  }
}
/**
   Helper routine to dump a byte array as dec values to Serial.
*/
void printDec(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
    Serial.print(buffer[i], DEC);
  }
}

void callback(char *topic, byte *payload, unsigned int length) {
  Serial.print("Message arrived in topic: ");
  Serial.println(topic);
  Serial.print("Message:");
  for (int i = 0; i < length; i++) {
      Serial.print((char) payload[i]);
  }
  Serial.println();
  Serial.println("-----------------------");
}
/**
   Helper routine to dump a byte array as string to client.publish.
*/
void array_to_string(byte a[],unsigned int len,char buffer[])
{
  for(unsigned int i=0;i<len;i++)
  {
    byte nib1=(a[i]>>4)&0x0F;
    byte nib2=(a[i]>>0)&0x0F;
    buffer[i*2+0]=nib1 < 0x0A ? '0' + nib1 : 'A'+ nib1 - 0x0A;
    buffer[i*2+1]=nib2 < 0x0A ? '0' + nib2 : 'A'+ nib2 - 0x0A;
  }
  buffer[len*2]='\0';
}
