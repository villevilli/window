Window window1 = new Window();
Window window2 = new Window();
int origX;
int origY;
boolean alertOn;
int laskuri;
ArrayList<Window> ikkunat = new ArrayList();
Window captured;

void setup() {
  
  fullScreen(P2D);
  alertOn = true;
}
void draw() {
  
  if (alertOn) {
    textSize(laskuri/3);
    fill(random(255),random(255),random(255),laskuri+10);
    stroke(random(255),random(255),random(255));
    background(random(255),random(255),random(255));
    text("epilepsy warning/epilepsia vaara",30,height/2);
    if (laskuri == 115*3) {
      laskuri = 0;     
      alertOn = false;
      afterwarning();
      return;
    }
    laskuri=laskuri+1;
  }
}
void mouseDragged() {

  int deltaX = mouseX - origX;
  int deltaY = mouseY - origY;
  origX = mouseX;
  origY = mouseY;
  if (captured != null) {
    captured.move(deltaX, deltaY);
    background(random(255), random(255), random(255));
    //captured.draw();
    drawIkkunat();
  }
}
void drawIkkunat(){
  for(Window ikkuna: ikkunat){
    ikkuna.draw();
  }
}
void mousePressed() {
  for(Window ikkuna: ikkunat){
    if (ikkuna.isInside(mouseX, mouseY)) {

    captured = ikkuna;
    origX = mouseX;
    origY = mouseY;
  }
  }
  
}
void mouseReleased() {
  captured = null;
}
void afterwarning() {
  background (255);
  window1.create("tämä peli on epilepsinen(:", width/2, height/2, 400, 160);
   ikkunat.add(window1); 
  window2.create("mä onn myös epileptinen(;", width/3, height/3, 400, 160);
  ikkunat.add(window2);
}