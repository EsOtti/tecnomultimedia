PImage miImagen1, miImagen2, miImagen3, miImagen4;
String texto2 = "CON 10HS DE AUTONOMIA"; 
String texto1 = "LA PRIMER CATERPILLER \nTOTALMENTE ELECTRICA";
String texto3 = "400 TONELADAS DE CARGA VERTICAL";
int estado = 1;
int tiempoEstado = 0;
int tiempoTransicion = 5000;
PFont misLetras;

// posición del texto
int posX1 = 60;
int posY1 = 50;
int posX2 = 200;
int posY2 = 240;
int posX3 = 20;
int posY3 = 240;

void setup() {
  size(640, 480);
  miImagen1 = loadImage("CAT.jpeg");
  miImagen2 = loadImage("CAT1.png");
  miImagen3 = loadImage("CAT2.jpg");
  miImagen4 = loadImage("back-button.png");
  misLetras = loadFont("SKAkademkniga-Trial-48.vlw");
}

void draw() {
  textFont(misLetras, 40);
  textSize(20);
  // imagen y texto
  if (estado == 1) {
    // primera imagen
    image(miImagen1, 0, 0, 640, 480);
    text(texto1, posX1, posY1);
  } else if (estado == 2) {
    // segunda imagen
    image(miImagen2, 0, 0, 640, 480);
    text(texto2, posX2, posY2);
  } else {
    // tercera imagen
    image(miImagen3, 0, 0, 640, 480);
    text(texto3, posX3, posY3);
    fill(255);
    image(miImagen4,width-110, height-90,70, 70);
  }

  if (millis() - tiempoEstado > tiempoTransicion) {
    if (estado == 1) {
      estado = 2;
      // reiniciar segunda imagen
      posX2 = 320;
      posY2 = 240;
    } else if (estado == 2) {
      estado = 3;
      // reiniciar tercera imagen
      posX3 = 20;
      posY3 = 240;
    } else if (estado == 3) {
      estado = 1;
      // reiniciar primera imagen
      posX1 = 60;
      posY1 = 50;
    }
    tiempoEstado = millis();
  }
  
  // mover el texto hacia abajo
  if (posY1 < 170) {
    posY1 += 2;
  }
  if (posY2 < 430) {
    posY2 += 2;
  }
  if (posY3 < 430) {
    posY3 += 2;
  }
}

void mousePressed() {
  if (estado == 3 && mouseX > width-120 && mouseX < width-20 && mouseY > height-80 && mouseY < height-20) {
    estado = 1;
  }
}
