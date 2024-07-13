//Vaca Villegas Ibrahin //comision 2
//variable de la imagen
PImage imagen;

//variable para la interacción mediante los colores
color colores;

void setup(){
  
  size(800,400);
  
  //carga la imagen
  imagen = loadImage("F_1.jpg");
  
  //valor inicial de la variable colores
  colores = color(255);
  
}

void draw(){
  println(mouseX+"/"+mouseY);
  
  keyPressed();
  
  //llama la función para dibujar la grilla de cuadrados
  dibujarGrilla();
  
  //llama a la imagen
  image(imagen,0,0,400,400);
  
}
