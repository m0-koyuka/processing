float baseH = 15;

float arm1W = 20;
float arm1D = 10;
float arm1L = 20;

float arm2W = 5;
float arm2D = 5;
float arm2L = 10;

float arm3W = 5;
float arm3D = 5;
float arm3L = 8;

float arm4W = 5;
float arm4D = 5;
float arm4L = 6;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;


float dif = 1.0;

int radius = 10;
float x = -radius;
float speed = 0.5;


void setup(){
  size(1200, 800, P3D);
  ellipseMode(RADIUS); 
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();
}

void draw(){
  
  background(255,250,250);
  
  if(keyPressed){
    if(key == 'o'){
      angle0 = angle0 + dif;
    }
    if(key == 'O'){
      angle0 = angle0 - dif;
    }
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    if(key == 'c'){
      angle3 = angle3 + dif;
    }
    if(key == 'C'){
      angle3 = angle3 - dif;
    }
    if(key == 'd'){
      angle4 = angle4 + dif;
    }
    if(key == 'D'){
      angle4 = angle4 - dif;
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      angle4 = 0;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  xyzAxis(20); //xyzAxis @ base
  translate(0,0,baseH/2);
  fill(65,105,255);
  box(10,10,baseH);
  
  //1st link
  //go to 1st joint
  translate(0,0,baseH/2);
  rotateX(radians(angle1));  
  //go to center of 1st joint
  translate(0,0,arm1L/2);
  fill(0,0,139);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,arm1L/2);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,0,arm2L/2);
  fill(100,149,237);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0, 0, arm2L/2);
  rotateX(radians(angle3));
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(135,206,235);
  box(arm3W,arm3D,arm3L);
  
  //4th link
  // go to 4th joint
  translate(0, 0, arm3L/2);
  rotateX(radians(angle4));
  // go to center of 4th joint
  translate(0, 0, arm4L/2);
  fill(0,0,139);
  box(arm4W,arm4D,arm4L);
  
  //ball
  fill(0,0,0);
  x += speed;
  if (x > 200+radius){
    x = -radius;
  }
  translate(x-100,20,-40);
  sphere(5);
  
  //xyzAxis @ Pr
  translate(0, 0, 0);
  xyzAxis(10);

}
