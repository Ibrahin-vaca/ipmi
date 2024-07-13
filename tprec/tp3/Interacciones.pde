
//INTERACCIÓNES: 
//si apretas espacio se llama a la función coloresRandom
//la cual hace que la variable "colores" se vaya actualizando de manera
//random a la velocidad de los frames

//si apretas la R se llama la función reiniciar variables

void keyPressed(){
  if(key == ' '){
    coloresRandom();
  }
  
  if(key == 'r'){ 
    reiniciarVariables();
  }
}


//hace que los colores se actualicen de manera random con un framerate
//que se va actualizando de manera random entre los valores de 10 y 15
void coloresRandom(){
  frameRate(random(10,15));
  colores = color(random(255),random(255),random(255));
}


// función que reinicia las variables
void reiniciarVariables(){
  colores = color(255);
}
