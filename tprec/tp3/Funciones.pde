
//FUNCIONES:

boolean esPar(int numero){//parametros --> variable int numero
  return(numero%2==0);
}

void dibujarCuadrados(int a, int b){
  
  if(esPar(a+b)){
    
    for(int i=0; i<50; i+=1){
    int borde = i*255/50;
    stroke(255-borde + colores);
    line(400+i+a,0+b,400+i+a,30+b);
   }
    
  }else{
    
    for(int i=0; i<50; i+=1){
    int borde = i*255/50;
    stroke(borde + colores);
    line(400+i+a,0+b,400+i+a,30+b); 
   } 
 } 
}

void dibujarGrilla(){
  for(int a=0; a < width; a+=50){
    for(int b=0; b < width; b+=25){   
      dibujarCuadrados(a, b);
      
    }
  }
}
