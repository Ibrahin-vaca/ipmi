//Vaca Villegas Ibrahin //comision 2

PImage imagen;
color colores;

void setup(){
  
  size(800,400);
  imagen = loadImage("F_1.jpg") 
  colores = color(255);
  
}

void draw(){
  println(mouseX+"/"+mouseY);
  
  keyPressed();

  dibujarGrilla();
  image(imagen,0,0,400,400);
  
}
