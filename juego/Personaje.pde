class Personaje{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  // CONSTRUCTOR 
  public Personaje(){    
    imagen = loadImage("dos.gif");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);
  }
  
  // Mueve el personaje de izquierda a derecha y rebota con el eje x

  public void mover(){ 
    if(this.posicion.x > width){     
        this.velocidad.x = -this.velocidad.x;       
  }
  if(this.posicion.x < 0){   
        this.velocidad.x = -this.velocidad.x;      
  }  
  this.posicion.x += this.velocidad.x;  
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
