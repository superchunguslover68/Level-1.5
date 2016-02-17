int score = 0;
int ye  = 0;
float rX  = 0;
void setup() {
  size(500, 500);
  
}

void draw() {
  noCursor();
  background(0, 55, 255);
 fill(50,50,50);
rect(mouseX,mouseY, 50, 65);
  if (ye == 0) {
    rX = random(450);
  }
fill(0,0,90);
  ellipse(rX, ye, 20, 35);

  ye+= 10;
  if(ye > 499){
   exit(); 
  }
 if (rX > mouseX && rX < mouseX +  && ye > mouseY && ye < mouseY+65){
 ye = 0;
 score ++;
 }
 fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);

}

