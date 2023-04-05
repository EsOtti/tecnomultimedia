PImage mi_imagen;

void setup() {
  size(800, 400); 
   mi_imagen = loadImage("tp0.jpg");
}

void draw() {
  background(#F7F0E8);
  lights();
image(mi_imagen, 0, 0);
  noStroke();
  fill(#C18100); // marron fondo mid
  rect(400, 270, 440, 100);
  
  fill(58,141,180); // celeste ventana
  rect(680, 190, 50, 20); 
  
  fill (75); // sombra gris oscuro 
  rect(550, 270, 60, 40); 
  rect(630, 240, 80, 80); 
  rect(520, 240, 100, 40); 
  
  fill(#B98211); // tierra oscuro frente
  rect(662, 210, 70, 20); 
  rect(652, 220, 90, 30);
  rect(764, 270, 8, 24); 
  
  fill(#FAD688); // tierra claro
    rect(400, 360, 440, 120); 
  
  fill (#83460C); // marron oscuro
  triangle(412, 205, 625, 232, 605, 288);
  
  fill(#EA7D15); // naranja naranja
  triangle(650,260,760,260,760,280);
  rect(765, 248, 20, 70); 
  rect(765, 320, 20, 20);
    
  fill (#83460C); // marron oscuro 
  triangle(700, 192, 770, 185, 690, 170);
    
  fill(#EA7D15); // naranja naranja
  rect(625, 244, 147, 20); 
  rect(738, 244, 30, 50); 
  
  fill(237,172,7); // naranja oro
  rect(585, 265, 50, 70); 
  triangle(700, 165, 770, 185, 690, 185); 
  triangle(432, 208, 645, 242, 630, 268);
  
  fill(237,192,7); // amarillo caja
   triangle(410, 205, 455, 195, 564, 230);
  triangle(450, 195, 700, 195, 640, 254); 
  triangle(640, 195, 700, 195, 700, 165); 
  
  fill(0); // negro ruedas 
  ellipse(520, 320, 115, 115); 
  fill(0);
  ellipse(690, 320, 115, 115);
  
  fill(#EA7D15); // naranja ruedas
  ellipse(520, 320, 55, 55);
  fill(#EA7D15);
  ellipse(690, 320, 55, 55);
    fill (0);
  rect (725,205,3,40);
  
  fill (#020152); // linea azul
  rect (725,255,40,10);
  
    fill (237,172,7); // linea amarilla
  rect (738,265,28,5);
  
    fill (0); // negro escaleras
  rect (725,230,47,3);
  rect (765,260,20,2);
  rect (765,270,20,2);
  rect (765,280,20,2);
  rect (765,290,20,2);
  rect (765,300,20,2);
  rect (765,310,20,2);
  rect (765,320,20,2);
  rect (765,330,20,2);
  rect (769,205,3,40);
  rect (725,205,47,3);
}
