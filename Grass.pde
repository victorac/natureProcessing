class Grass{
  float[] joints;
  float[] posx,posy;
  float edgeHeight=40;
  
  Grass(float posx, float posy, int numJoints, float edgeHeight){
    this.posx=new float[numJoints+1];
    this.posy=new float[numJoints+1];
    this.posx[0]=posx;
    this.posy[0]=posy;
    this.edgeHeight=edgeHeight;
    joints=new float[numJoints];
    float rand=random(1);
    for(int i=0; i<joints.length;i++){
      joints[i]=rand*i;
    }
  }
  
  void display(){
    updatePos();
    beginShape();    
      curveVertex(posx[0],posy[0]);
      curveVertex(posx[0],posy[0]);//start curve
      for(int i=1;i<posx.length;i++)
        curveVertex(posx[i],posy[i]);
      curveVertex(posx[posx.length-1],posy[posy.length-1]);
    endShape();
  }
  
  void updatePos(){
    for(int i=0;i<joints.length;i++){
      posx[i+1]=perlinPos(joints[i],posx[0]-10*i,posx[0]+10*i);
      posy[i+1]=posy[0]-(i+1)*edgeHeight;
      joints[i]+=0.01;
    }
  }
  
  float perlinPos(float val,float mapBase, float mapCeiling){
   return map(noise(val),0,1,mapBase,mapCeiling); 
  }
}