int player,computer,d=0;
boolean flag=true;
String str[]={"Scissors","Rock","Paper"};

void setup(){
  size(700,500);
  player=0;computer=0;
  background(0); 
}

void draw(){
      if (d>0) delay(3000);
      d++;
      background(0);
      textSize(20);
      text("Let's Play Rock, Scissors and Rocks.",10,40);
      text("PLEASE Press 'r' for rock,'s' for scissors,'p' for paper.",10,90); 

      computer=int(random(3))+1;
      
}

void keyTyped(){
  if (keyPressed && key=='s') player=1;
  if (keyPressed && key=='r') player=2;
  if (keyPressed && key=='p') player=3;
  println(player);
  flag=false;
  println(flag);
  if ((!flag) && player>0){
    background(0); 
    int k=player+1;
    if (k>3) k=k%3;
    text("You :",10,50);
    text(str[player],10,100);
    text("Computer :",10,150);
    text(str[computer],10,200);
    if (k!=computer && player!=computer) text("YOU WIN",10,300);
    if (k==computer) text("COMPUTER WIN",10,300);
    if (player==computer) text("DRAW",10,300);
    flag=true;
    player=0;
  }
}

