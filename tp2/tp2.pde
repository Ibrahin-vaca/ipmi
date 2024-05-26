//Variables
float posX1;
float posX2;
float posX3;
PImage foto1;
PImage foto2;
PImage foto3;
String texto1;
String texto2;
String texto3;
String texto4;
int movimiento;
int fuente;
int contador;
int tamaño;
color colores;

void setup(){
size (640,480);
foto1= loadImage("Linea1.jpg");
foto2= loadImage("Linea2.jpg");
foto3= loadImage("Linea3.jpg");
tamaño = 0;
colores = color(0);
contador = 0;
texto1 =  "4 en linea es un juego de mesa de 2 jugadores";
texto2 = "Una ficha por turno y jugador";
texto3 =  "El que consiga ubicar 4 fichas en horizontal,"; 
texto4 = "vertical o diagonal gana";
}

void draw(){
  
  //pantalla 1
image (foto1, 0, 0);
 println(frameCount/30);
  fill (colores);
if (tamaño < 30){
  tamaño +=1;
colores =color (9,25,188);}
textSize(tamaño);
text (texto1, 640, 50);
textAlign(RIGHT, TOP);
 frameRate (30);

 
 //pantalla 2
 if(frameCount/30>=10){
 image (foto2, 0, 0);
fill (colores);
if(tamaño <30){
tamaño +=1;
colores =color(0);}
textSize(tamaño);
text(texto2, 640, 50);
textAlign(RIGHT,TOP);
 frameRate (30);
 }

 //pantalla 3 
  if(frameCount/30>=20){
 image (foto3, 0, 0);
fill (colores);
if(tamaño <30){
tamaño +=1;
colores =color(0);}
textSize(tamaño);
text(texto3, 640, 30);
text(texto4, 640, 55);}
textAlign(RIGHT, TOP);
 frameRate (30);
  }

 
void mousePressed (){
   
frameCount +=0;

//boton
text ("reinicia", 505, 393);
if (frameCount > 30 && mouseX >410 && mouseX <410+190 && mouseY > 355 && mouseY < 355 + 90){
fill (9, 128, 88);
rect (410, 355, 190, 90);
frameCount = 0;
contador = 0;

println (frameCount);
}
 }
