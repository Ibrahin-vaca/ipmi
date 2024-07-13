
//INTERACCIÓNES: 

void keyPressed(){
  if(key == ' '){
    coloresRandom();
  }
  
  if(key == 'r'){ 
    reiniciarVariables();
  }
}

void coloresRandom(){
  frameRate(random(10,15));
  colores = color(random(255),random(255),random(255));
}

void reiniciarVariables(){
  colores = color(255);
}
