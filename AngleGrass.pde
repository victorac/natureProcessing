class AngleGrass{
  float[] times;//tempo nas variaveis de noise
  float[] angles;
  float posx,posy;//posição do objeto na tela
  float edgeHeight=40;//altura dos segmentos de grama
  
  AngleGrass(float posx, float posy, int numJoints, float edgeHeight){
    this.posx=posx;
    this.posy=posy;
    this.edgeHeight=edgeHeight;
    angles=new float[numJoints+1];
    times=new float[numJoints+1];
    float rand=random(1000);
    println(rand);
    for(int i=0; i<times.length;i++){
      times[i]=rand+i;
    }
  }
  
  void display(){
    updatePos();
    pushMatrix();
    translate(posx,posy);
    rotate(radians(angles[0]));
    line(0,0,0,-edgeHeight);//desenha a reta na origem da tela, translate coloca na posx/posy
    for(int i=1;i<angles.length;i++){
      translate(0,-edgeHeight);//coloca o começo deste segmento em cima do ultimo
      rotate(radians(angles[i]));
      line(0,0,0,-edgeHeight);
    }
    popMatrix();
  }
  
  void updatePos(){
    for(int i=0;i<times.length;i++){
      angles[i]=perlinPos(times[i],-15,15);
      times[i]+=0.005;
    }
  }
  
  float perlinPos(float val,float mapBase, float mapCeiling){
   return map(noise(val),0,1,mapBase,mapCeiling); 
  }
}