
//función propia con parametros que SI retorna un valor
boolean esPar(int numero){//parametros --> variable int numero
  return(numero%2==0);
}//lo que hace es devolver(retornar) si un valor es par o impar


//función propia con parametros que NO retorna un valor
//Está función usa la función "esPar" para diferenciar los dos tipos de 
//filas que tiene la imagen, si el valor de a+b es PAR entonces se dibujan
//las filas con el stroke en 255-borde y si NO es par entonces el stroke
//se dibuja con el valor de borde que le asignaste por defecto
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


//dibuja la grilla con un ciclo for anidado llamando a la función que
//dibuja los cuadrados
void dibujarGrilla(){
  for(int a=0; a < width; a+=50){
    for(int b=0; b < width; b+=25){   
      dibujarCuadrados(a, b);
      
    }
  }
}
