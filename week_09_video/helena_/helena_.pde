PImage photo,origin;
int gridWidth = 10;

int diamt=10;  
int spacing=8;  
void setup()  
{  
  size(560,860);
  origin=loadImage("3360529747049769927.jpg");
  photo= loadImage("3360529747049769927.jpg"); 
  image(photo,0,0,560,860);
  photo.filter(THRESHOLD,0.8);  
  photo.resize(photo.width*2,photo.height*2);  
  origin.resize(origin.width*2,origin.height*2);  
  
}  
  
void draw(){  
  for(int i=spacing/2;i<photo.width;i+=spacing){  
    for(int j=spacing/2;j<photo.height;j+=spacing){ 
        if(photo.get(i,j)==color(0)){  
          int x=i*diamt;
          int y=j*spacing;
          if(photo.get(i,j)==color(0)){  
            fill(origin.get(i,j));  
            noStroke();  
            ellipse(i,j,diamt,diamt);  
        }  
     }  
   }  
}  }