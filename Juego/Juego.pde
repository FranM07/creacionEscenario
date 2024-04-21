public PJ personaje;
public Asteroide rocaEspacial;
PImage fondo;
color tint_color = color(210, 187, 33);

public void setup(){
  size(700,700);
  
  personaje = new PJ();
  personaje.setPosicion(new PVector(width/2,height/1.20));
  personaje.setVelocidad(new PVector(20,20));
  
  rocaEspacial = new Asteroide(new PVector(width/2,0),new PVector(0,10));

  fondo = loadImage("fondo.png");
  fondo.resize(700,700);
}

public void draw (){
  tint(tint_color);
  
  background(fondo);
  
  personaje.dibujar();
  
  rocaEspacial.dibujar();
  
  rocaEspacial.mover();
  
  actualizarVelocidadPJ();
}

void keyPressed() {

  if(key == 'd') {
    personaje.mover(1);
  }
  
  if(key == 'a') {
    personaje.mover(0);
  }
}

public void actualizarVelocidadPJ(){
  if (personaje.posicion.x > (width/2)){
    personaje.velocidad.x = 30;
  } else {
    personaje.velocidad.x = 30;
  }
}
