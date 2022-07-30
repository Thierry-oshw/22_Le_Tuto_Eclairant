#include <Arduino.h>

#include <FastLED.h>

#define Pot_0 A0
#define Pot_1 A1
#define Pot_2 A2

int index_Pot = 0;
int mes_Pot_0 [8];
int mes_Pot_1 [8];
int mes_Pot_2 [8];

int som_Pot_0 = 0;
int som_Pot_1 = 0;
int som_Pot_2 = 0;

#define NUM_LEDS 64     
#define DATA_PIN 10
CRGB Leds[NUM_LEDS];

void setup() {
  // put your setup code here, to run once:
    int i = 0;
  for(i = 0 ; i<8; i++)
  {
    mes_Pot_0[i] = 0; 
    mes_Pot_1[i] = 0;
    mes_Pot_2[i] = 0; 

  }

  pinMode(Pot_0, INPUT);
  pinMode(Pot_1, INPUT);
  pinMode(Pot_2, INPUT);

  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(Leds, NUM_LEDS);
  FastLED.delay(50);
  FastLED.setBrightness(15);

      // remontée d'info vers PC
  Serial.begin(115200);
  Serial.println("Initialisation faite");
}

void loop() {
  // put your main code here, to run repeatedly:
      // échantillons et somme
    som_Pot_0 -= mes_Pot_0[index_Pot];
    mes_Pot_0[index_Pot] = analogRead(Pot_0);
    som_Pot_0 += mes_Pot_0[index_Pot];

    som_Pot_1 -= mes_Pot_1[index_Pot];
    mes_Pot_1[index_Pot] = analogRead(Pot_1);
    som_Pot_1 += mes_Pot_1[index_Pot];

    som_Pot_2 -= mes_Pot_2[index_Pot];
    mes_Pot_2[index_Pot] = analogRead(Pot_2);
    som_Pot_2 += mes_Pot_2[index_Pot];

    index_Pot++;
    if (index_Pot > 7) {index_Pot = 0;}

    CRGB couleur = CRGB( (som_Pot_0/32), (som_Pot_1/32), (som_Pot_2/32));
  
    for(int i = 0 ; i<NUM_LEDS; i++)
    {
      Leds[i] = couleur;
    }


//Serial.println(som_Pot_0/32);
//Serial.println("hop");

    FastLED.show();
    //delay(500);
    // Now turn the LED off, then pause
    //Leds[0] = CRGB::Black;
    //FastLED.show();
    //delay(500);
 
    //FastLED.delay(500);
    FastLED.delay(50);
    //FastLED.setBrightness(som_Pot_3/64);
 
}