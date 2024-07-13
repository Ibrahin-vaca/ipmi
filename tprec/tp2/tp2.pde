//Vaca Villegas Ibrahin //comision 2
// asignacion de variables
PImage imagen1, imagen2, imagen3;
String texto1 = "4 en linea es un juego de 2 jugadores.";
String texto2 = "por turno, cada jugador \ndebe colocar una ficha donde quiera.";
String texto3 = "el primer jugador en \ncolocar 4 en linea de forma vertical, \nhorizontal o diagonal, gana.";
float posX = 0;
float posY = 0;
float velocidadX = 1;
float velocidadY = 1;
int pantalla = 0;
int tiempoPantalla = 300; 
int tiempo = 0;
int botonX, botonY, botonAncho, botonAlto;

void setup() {
  size(640, 480);
  imagen1 = loadImage("Linea1.jpg");
  imagen2 = loadImage("Linea2.jpg");
  imagen3 = loadImage("Linea3.jpg");
  botonX = width/2 - 50;
  botonY = height - 50;
  botonAncho = 100;
  botonAlto = 40;
}

void draw() {
  background(255);
  fill(0);
  textSize(24);
  if (pantalla == 0) {
    image(imagen1, 0, 0, width, height);
    textAlign(CENTER, CENTER);
    text(texto1, posX, posY);
  } else if (pantalla == 1) {
    image(imagen2, 0, 0, width, height);
    text(texto2, width/2, posY);
  } else if (pantalla == 2) {
    image(imagen3, 0, 0, width, height);
    text(texto3, width/2, posY);
  }
 
  
  // Mover texto
  posX += velocidadX;
  posY += velocidadY;
  
  
  
  // Transición automática entre pantallas por tiempo
  if (frameCount - tiempo > tiempoPantalla) {
    siguientePantalla();
    tiempo = frameCount;
  }
  
  // botón al final
  if (pantalla == 2) {
    fill(100);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(255);
    text("Reiniciar", width/2, height - 30);
  }
}

void siguientePantalla() {
  pantalla = (pantalla + 1) % 3;
  posX = 0;
  posY = 0;
}

void keyPressed() {
  if (key == ' ') {
    siguientePantalla();
  }
}

void mousePressed() {
  if (pantalla == 2 && mouseX > botonX && mouseX < botonX + botonAncho && mouseY > botonY && mouseY < botonY + botonAlto) {
    reiniciar();
  }
}

void reiniciar() {
  pantalla = 0;
  tiempo = frameCount;
}
