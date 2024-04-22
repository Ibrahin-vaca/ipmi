PImage miPaisaje;
void setup () {
  size (800, 400); 
  background (250, 150, 56);
  miPaisaje = loadImage ("miPaisaje.jpg"); 
}

  void draw () {
     image (miPaisaje, 0, 0);
  println (mouseX + "/" + mouseY); 

  // Montaña
noStroke ();
  fill (124, 87, 9);
 triangle (400, 120, 570, 90, 800, 200);
triangle (400, 148, 400, 119, 800, 200);
triangle (580, 100, 748, 72, 800, 200);
triangle (746, 72, 800, 90, 800, 200);

fill (121, 155, 23);
triangle (400, 340, 400, 149, 800, 201);
triangle (400, 339, 800, 248, 800, 200);
fill (92, 113, 10);
triangle (800, 247, 800, 365, 400, 340);
 
 //pasto
 noStroke();
 rect (800, 400, 400, 200);
  fill (138, 211, 55);
 triangle (400, 340, 800, 400, 400, 400);
 triangle (400, 340, 800, 400, 800, 365);
 
 //pino
fill (57, 46, 2);
 rect (450, 360, 35, 10);
 noStroke ();
 fill (37, 80, 7);
 triangle (418, 360, 521, 360, 469, 125);
 triangle (420, 310, 519, 310, 469, 125);
 triangle (422, 270, 517, 270, 469, 125);
 triangle (425, 230, 514, 230, 469, 125);
 stroke (0);
  strokeWeight (2);
 line (430, 370, 507, 370);

}
