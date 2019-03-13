//Create a state machine with 4 different scenes using a switch. 
//(no example sketch, I'll just be looking to make sure your 
//switch is working properly)
int state = 0;

void setup(){
  size(600,600);
  rectMode(CENTER);
  
}

void draw(){
  switch(state){
    case 0 : 
    scene0();
    break;
    //after specifing case, you need a case setting and break
    case 1:
    scene1();
    break;
    case 2:
    scene2();
    break; 
    case 3:
    scene3();
    default:
    break;
  
}

println(mouseX, mouseY);
}

void scene0(){
  background(234, 237, 237);
  rect(
  
}
void scene1(){
  
  
}
void scene2(){
  
  
}
void scene3(){
  
  
}
