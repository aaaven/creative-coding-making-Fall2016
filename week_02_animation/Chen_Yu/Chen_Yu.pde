float r=0;
void setup()
{
size(800,800);
rectMode(CENTER);    //dingyi juxing zhongxingdian wei zuobiaoyuandian

}
void draw()
{
fill(0,50);
rect(width/2,height/2,width,height); //juxing
translate(mouseX,mouseY);//juxing zai shubiaozhong de weizhi
rotate(r);//xuanzhuan
fill(100,230,340);
rect(0,0,1000,150);
r=r+0.3;
}