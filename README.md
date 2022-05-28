# 22_Le_Tuto_Eclairant

 mots clés: tutoriel led rgb éclairage diorama lighting

## Introduction

Les LEDs sont utilisables pour un diorama. Elles présentent comme avantages:
    1. De ne pas chauffer (en tout cas moins qu’une ampoule si ça existe encore).
    2. D’être tellement vulgarisées et diffusées que leur coût est très faible.
    3. De fonctionner sous une faible tension (de l’ordre de 1,2V pour les LEDs classiques et 5V pour les RGBs)

Une LED RGB est la somme de 3 leds (Rouge, Verte, Bleue = Red Green Blue) pilotées par une petite puce qui va recevoir des instructions par une patte et les retransmettre par une autre pour la LED RGB suivante. Ce point va être détaillé par la suite.

Petite photo de famille :

![Photo de famille](/images/photo_1.jpg "Plusieurs LEDS")

En gros, LED classique = 2 pattes, LED RGB = 4 pattes.
Il y a aussi des LEDs classiques bicolores (il y a deux LEDs de couleurs différentes dans le même bulb). Mais je ne vais pas approfondir ce sujet là.

## Pilotage d’une LED classique

Il faut alimenter la LED classique avec une tension à ses bornes de 1,2V en général, et contrôler le courant qui y circule pour qu’il soit de l’ordre de 10mA (entre 5 et 20mA).
Plus le courant est fort, plus la luminosité est forte.
Pour obtenir ces conditions, le plus simple est de relier la LED classique à une source de tension via une résistance qui va limiter le courant et faire chuter la tension.

![schema polarisation LED](/images/schema_1.png "Polarisation d'une LED")

Et en gros, pour ceux qui s’en souvienne : u = R1 * i + u(diode)
U(diode) vaut approximativement 1,2V. Si i vaut 5mA, il faut les couples suivants tension u et résistance R1 (je suis sympa, je vous fais un tableau avec des valeurs normalisées).

|u|i|
|-|:-|
|1,5V (pile AAA cylindrique par exemple)|68 Ohms|
|3,3V|470 Ohms|
|5V|820 Ohms|

Les résistances devront avoir un boîtier permettant de dissiper au moins 50mW.
ATTENTION : toujours mettre une résistance sinon ça va mal finir pour la LED. (il y a une façon de faire pour ne pas mettre de résistance mais il faut alors piloter la LED en courant, c’est pas simple).

## Pilotage LED RGB

Il y a plusieurs fabricants de LED RGBs avec bien sûr des différences. Je sais faire fonctionner des LEDs WS2812B (et apparentés). Donc je vous parle de celles-ci.

![schema pilotage LED RGB](/images/schema_2.png "Pilotage LED RGB")

Là, la LED a besoin d’une tension 5V sur les pattes 1 (VDD au plus) et 3 (VSS au moins).
La patte DIN reçoit les ordres pour les 3 couleurs pour elle-même ou la suivante via sa patte DOUT.
Les LEDS sont à la queue-leu-leu (daisy chain en anglais).

Une méthode pour les piloter est alors d’utiliser par exemple une carte Arduino Nano avec 3 potentiomètres par exemple :

![schema arduino nano](/images/schema_3.png "Schema arduino nano")
