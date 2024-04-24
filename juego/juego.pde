private Personaje personaje;
private Hongo hongo;

PImage fondo;
PVector coordenadasRect;
int ancho, alto,distanciaEntreRect;


public void setup(){
  size(1000,800);
  //para colocar la imagen de fondo
  fondo = loadImage("fondo.jpg");
  fondo.resize(width, height);
  tint(255,255,0);// coloca tinte amarrillo a la imagen de fondo 
 
  //llamado al constructor de personaje
  personaje = new Personaje();
  personaje.setPosicion(new PVector(0,height-175));
  personaje.setVelocidad(new PVector(2,2));
  
  //llamado al constructor de hongo
  hongo = new Hongo();
  hongo.setPosicion(new PVector(width,height));
  
  //dibuja los ladrillos del piso
  distanciaEntreRect = 1;
  ancho = 40;
  alto = 20;
  coordenadasRect = new PVector(distanciaEntreRect,height-130);
}

public void draw(){
  background(fondo);
  noTint();
  
  personaje.dibujar();
  personaje.mover();
  
  hongo.dibujar();
  hongo.mover();
  
  dibujarRectangulos();
}


public void dibujarRectangulos(){
  for (float x= coordenadasRect.x; x< width; x+= (ancho + distanciaEntreRect)){
    for(float y = coordenadasRect.y; y< height; y+=( alto + distanciaEntreRect)){
    rect(x,y,ancho,alto);
    stroke(0);
    fill(#E8620E);
    }
  }  
}
