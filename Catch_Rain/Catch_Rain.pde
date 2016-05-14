int Ry = 0;
int end = 600;
int Rx = 0;
int score = 0;
int a = 0;
void setup(){
size(600,1000);

  
  
}
void draw(){
  background(0,60,100);
  fill(100,100,0);
  rect(mouseX, 700, 50, 50);
  fill(0,0, 200);
  
  if( Ry== 0){
Rx =(int) random(end);
  }
  
  Ry+= 5;
 
  ellipse(Rx, Ry, 20, 30); 
  noStroke();
  if(Ry == 1000){
   Ry= 0; 
 
   }
   if(Ry >=700 && Ry <= 900){
    checkCatch(Rx);
  }
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+50){
Ry = 0;
      score++;
}
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
