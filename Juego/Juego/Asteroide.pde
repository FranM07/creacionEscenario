class Asteroide{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  
  public Asteroide(){
    imagen = loadImage("asteroide.png");
  }
  
  public Asteroide(PVector posicion, PVector velocidad){
    this.posicion = posicion ;
    this.velocidad = velocidad;
    this.imagen = loadImage("asteroide.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,150,200); 
  }
  
  public void mover(){
    if(this.posicion.y < height-200){
      this.posicion.y += this.velocidad.y+10;
    }else{
      this.posicion.y = 0;
      this.posicion.x = random(width);
    }
  }
}  
