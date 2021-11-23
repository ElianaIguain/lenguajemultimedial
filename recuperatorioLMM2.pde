String estado;
PImage portada;
PImage  inter[]=new PImage [7];
//PImage  resal[]=new PImage [2];
int Frameactual=0 ;
PImage f1, f2, f3, f4, f5, f6, f7, f8, f9, inst, Fondo, barra, botonoff, botonoff1, botonoff2, botonoff3, Cllo, Cen, Cnor;
int tiempo1=0;
int tiempo=0;
int tiempo2=0;
int tb2=0;
int contador, i;
boolean b1=false;
boolean b2=false;
boolean c1=false;
boolean c2=false;
int delay;
int moral, rating;


void setup() {
  size(1200, 800);

  estado="juego";
  tiempo=25;
  portada=loadImage("portada.png");
  f1=loadImage("historia1.png");
  f2=loadImage("historia2.png");
  f3=loadImage("historia3.png");
  f4=loadImage("historia4.png");
  f5=loadImage("historia5.png");
  f6=loadImage("historia6.png");
  f7=loadImage("historia7.png");
  f8=loadImage("historia8.png");
  f9=loadImage("historia9.png");
  Fondo=loadImage("fondo.png");
  barra=loadImage("bARRAS.png");
  botonoff=loadImage("0.png");
  botonoff1=loadImage("0.png");
  botonoff2=loadImage("0.png");
  botonoff3=loadImage("0.png");
  Cllo=loadImage("cylt.png"); //cara llorando
  Cen=loadImage("cyle.png"); //cara enojado
  Cnor=loadImage("cyl.png"); //cara normal
  inst=loadImage("instrucciones.png");
  for (int i = 0; i <6; i++) {
    inter[i]=loadImage("d_"+i+".png");
  }
  /* for (int i = 0; i <2; i++) {
   resal[i]=loadImage("resaltar_"+i+".png");
   }*/
}


void draw() {
  println(estado);
  if (estado.equals("0")) {
    image(portada, 0, 0, 1200, 700);
    Frameactual=frameCount % 6;

    if (Frameactual==0) {
      image(inter[0], 100, 250);
    }
    if (Frameactual==1) {
      image(inter[1], 300, 250);
    }
    if (Frameactual==2) {
      image(inter[2], 100, 250);
    }
    if (Frameactual==3) {
      image(inter[3], 100, 250);
    }
    if (Frameactual==4) {
      image(inter[4], 650, 250);
    }
    if (Frameactual==5) {
      image(inter[5], 100, 250);
    }
    if (Frameactual==6) {
      image(inter[6], 100, 250);
    }
    ////////////////ANIMACIÓN INICIAL/////////////////////
  } 
  if (estado.equals("1")) {
    tiempo++;
    image(f1, 0, 0, 1200, 700);
    //image(resal[frameCount %2], 0, 0, 1200, 700);
  } 
  if (tiempo>3) {
    estado.equals("2");
    image(f2, 0, 0, 1200, 700);
  }  
  if (tiempo>6) {
    estado.equals("3");
    image(f3, 0, 0, 1200, 700);
  }
  if (tiempo>9) {
    estado.equals("4");
    image(f4, 0, 0, 1200, 700);
  }
  if (tiempo>12) {
    estado.equals("5");
    image(f5, 0, 0, 1200, 700);
  }
  if (tiempo>15) {
    estado.equals("6");
    image(f6, 0, 0, 1200, 700);
  }
  if (tiempo>19) {
    estado.equals("7");
    image(f7, 0, 0, 1200, 700);
  }
  if (tiempo>=22) {
    estado.equals("8");
    image(f8, 0, 0, 1200, 700);
  }
  if (tiempo>=23) {
    estado.equals("9");
    image(f9, 0, 0, 1200, 700);
  } 
  if (tiempo>=25) {
    estado.equals("juego");
    tiempo=tiempo+1;
    image(Fondo, 0, 0, 1200, 700);
    //image(barra, 0, 0, 1200, 700);
    rectMode(CORNER);
    noStroke();
    fill(0, 255, 0);
    rect(120, 102, moral, 18);
    fill(255, 0, 0);
    rect(1080, 102, rating, 18);
    moral++;
    rating--;
  } else if (estado.equals("instrucciones")) {
    image(inst, 0, 0, 1200, 700);
  }
}

void mouseClicked() {
  if (estado.equals("0")) {
    if (mouseY>450&& mouseY<450+100&& mouseX>300 && mouseX<300+250) {
      estado = "1";
    }
  }
  if (estado.equals("0") && mouseX>width/2) {
    estado=("instrucciones");
    image(inst, 1200, 700);
  }
}
