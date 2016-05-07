color rood = color(255,0,0);
color oranje = color(255,170,10);
color geel = color(255,255,0);
color groen = color(0,255,0);
color blauw = color(0,200,255);
color violetenindigo = color(150,50,255);
color paars = color(150,50,255);
color roze = color(255,150,150);
color bruin = color(113,75,3);
color bloed =  color(206,19,2);

int lost = 0;

int balkenY[] = {0,0,0,0,0,0};
float balkenX[] = {random(900),random(900),random(900),random(900),random(900),random(900)};
float lengteY[] = {random(300),random(300),random(300),random(300),random(300),random(300)};

int Xspeler = 0;

boolean raak=false;

void setup(){
  size(900,900);
  noStroke();
  
}

void draw(){
  background(paars);
 
 println(frameRate);
 
  fill(blauw);
 
 ellipse(Xspeler,850,50,50);
 
 fill(bloed);
   
  for(int i = 0; i < balkenY.length ; i += 1) {
    rect(balkenX[i],balkenY[i],lengteY[i],10);
 


}
 
  
  for(int i = 0; i < balkenY.length ; i += 1) {
   balkenY[i]+=20;
   
   if(balkenY[i] == 900){
     balkenY[i] = int(random(300));
     }
  
}
  
  
  
  if(keyPressed == true){
    if(keyCode == LEFT){
      Xspeler-=10;
    }
    if(keyCode == RIGHT){
      Xspeler+=10;
    }
}
 
  
 
  
  fill(groen);
  rect(0,875,900,25);
  
  fill (blauw);
   if( get (Xspeler,850) == color(bloed) || lost==1){
   textSize(100);
   background( bloed);
   text("You Lost!" ,250,400);
   lost = 1;
 }
}