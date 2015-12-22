Grass g1;
Grass g2;
Grass g3;
Grass g4;
Grass g5;
AngleGrass g6;
AngleGrass g7;
AngleGrass g8;

void setup(){
  size(640,320);
  //init();
  strokeWeight(2);
  //time=millis();
  noFill();
  g1= new Grass(width/2,height,2,40);
  g2= new Grass(width/2-3,height,2,30);
  g3= new Grass(width/2-5,height,2,24);
  g4= new Grass(width/2+3,height,2,25);
  g5= new Grass(width/2+5,height,2,22);
  g6= new AngleGrass(width/2+13,height,1,23);
  g7= new AngleGrass(width/2+15,height,2,26);
  g8= new AngleGrass(width/2+10,height,2,20);
}
float time;
void draw(){
  background(255);
  //TESTE DE ROTAÇÃO
    //pushMatrix();
    //translate(width/2,height);
    //rotate(radians(60));
    //stroke(0);
    //line(0,0,0,-60);
    //translate(0,-60);
    //rotate(radians(60));
    //stroke(100);
    //line(0,0,0,-50);
    //popMatrix();
  //Grass
  stroke(0,100,0);
  g1.display();
  g2.display();
  g3.display();
  g4.display();
  g4.display();
  //AngleGrass
  stroke(200,100,50);
  g6.display();
  g7.display();
  g8.display();
  
  //restos
  ////if(millis()-time>50){
  //  background(255);
  //  //grass();
  //  g1.display();
  //  g2.display();
  //  g3.display();
  //  g4.display();
  //  //time=millis();
  ////}
  ////saveFrame();
}

//float t1,t2,t3,t4,t5;

//void init(){
// t1=random(1);
// t2=random(2);
// t3=random(3);
// t4=random(4);
// t5=random(5);
//}

//void grass(){
//  float x=width/2;
//  float y=height;
//  beginShape();
//    curveVertex(x,y);
//    curveVertex(x,y);
//    curveVertex(map(noise(t1),0,1,x-10,x+10),y-80);
//    curveVertex(map(noise(t2),0,1,x-20,x+20),y-160);
//    curveVertex(map(noise(t2),0,1,x-20,x+20),y-160);
//  endShape();
//  //ellipse(x+noise(t1)*10,y-40,10,10);
//  //ellipse(x+noise(t2)*10,y-80,10,10);
//  //ellipse(x,y,10,10);
//  t1+=0.005;
//  t2+=0.01;
//  //float x2=x+noise(t1)*10;
//  //ellipse(x2,y-40,10,10);
//  //t1+=0.01;
//  ////float x3=x-noise(t2)*10;
//  ////ellipse(x3,y-40,10,10);
//  ////t2+=0.01;
//  //curve(x,y,x,y,x2,y-40,x2,y-40); //<>//
//}