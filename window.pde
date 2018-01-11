public class Window {
int windowX;
int windowY;
int windowWidth;
int windowHeight;
String windowText;

  public void create(String name, int x, int y, int windowWidth, int windowheight) {
    rect(x, y, windowWidth, windowheight, 7);
    this.windowX = x;
    this.windowY = y;
    this.windowWidth = windowWidth;
    this.windowHeight = windowheight;
    windowText = name;
  }
  public void draw(){
    fill(random(255),random(255),random(255));
    rect(windowX, windowY, windowWidth, windowHeight, 7);
    textSize(20);
    fill(0);
    text(windowText, windowX, windowY+20);
  }
  public void move(int dX,int dY){
    windowX = windowX + dX;
    windowY = windowY + dY;
  }
  public boolean isInside(int x, int y){
    if(x>=windowX && x<= windowX+windowWidth
    && y>=windowY && y<= windowY+windowHeight){
      return true;
    }
    return false;
  }
  public void delete(String windowName){
  
  }
}