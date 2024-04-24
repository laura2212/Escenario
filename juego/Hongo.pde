class Hongo{
  private PVector posicion;
  private PImage imagen;
 
  
  // CONSTRUCTOR 
  public Hongo(){
    imagen = loadImage("hongo.gif");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,50,50);
  }
  
  // Mueve la posicion del hongo con el movimiento del mouse
 
  public void mover(){  
      this.posicion.x = mouseX;
      this.posicion.y = mouseY;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
}
