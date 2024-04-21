class PJ{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
 
  //CONSTRUCTOR
  public PJ(){
    imagen = loadImage("pj.png");  
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,150);  
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
    this.velocidad = velocidad;  
  }
  
  public void mover(int direccion){
    if(direccion == 0){
      this.posicion.x -= this.velocidad.x;
    }
    if(direccion == 1){
      this.posicion.x += this.velocidad.x;
    }
  

    // Verifica los límites del lienzo
    if (posicion.x < 0) {
      posicion.x = 0; // Limita el movimiento a la izquierda
    } else if (posicion.x > width) {
      posicion.x = width; // Limita el movimiento a la derecha
    }
  }
  public void actualizarVelocidadPJ(){
  if (personaje.posicion.x > (width/2)){
    personaje.velocidad.x = 40;
  } else {
    personaje.velocidad.x = 40;
  }
}
} 
