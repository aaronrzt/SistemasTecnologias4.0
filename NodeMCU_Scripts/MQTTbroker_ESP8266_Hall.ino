#include <math.h>  
#include <time.h>
#include <ESP8266WiFi.h>
#include <PubSubClient.h>

// WiFi
const char *ssid = "cel-aarongrt"; // Enter your WiFi name
const char *password = "oag43021";  // Enter WiFi password

// MQTT Broker
const char *mqtt_broker = "192.168.201.193"; //"broker.emqx.io";
const char *topic = "esp8266/hall";
const char *mqtt_username = "equipo1"; //"emqx1";
const char *mqtt_password = "node-red"; //"public1";
const int mqtt_port = 1883;

WiFiClient espClient;
PubSubClient client(espClient);

// Signal Variables
double averageSignalA = 0 ;
unsigned char counter = 0;
unsigned char maxCounts = 150; // every 300ms send data

char hall[6];

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
  // publish and subscribe
  client.publish(topic, "hello world");
  client.subscribe(topic);
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

void loop() {
  client.loop();

  double signalA = analogRead(A0);///162.8125;
  averageSignalA = averageSignalA + (signalA - averageSignalA)/(++counter);
  
  if(counter >= maxCounts){
    dtostrf(averageSignalA, 8, 2, hall);
    client.publish(topic, hall);
    averageSignalA = 0;
    counter = 0;
    delay(500);
  }
}
