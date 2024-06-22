int mod;
PImage imagen;

void setup(){
  size( 800, 400 );
  imagen = loadImage ("F_1.jpg");
  mod = height/ 10 ; // =60
}

void draw(){
  background (255);
  image (imagen, 400, 0);
  for( int i = 0 ; i < 400 ; i+=mod ){  //10 iteraciones
    for( int j = 0 ; j < height ; j+=mod ){  //10 iteraciones
      println( i + " / " + j);
      rect( i, j, mod, mod );
    }
  }
}
