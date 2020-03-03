size(600,800);
background(245,228,161);




//chopstick right

smooth();
stroke(75,46,17);
strokeJoin(ROUND);
strokeWeight(2);
fill(124,78,32);
quad(90,60,110,60,80,379,75,378);

smooth();
stroke(232,205,178);
strokeWeight(3);
line(91,75,109,75);
line(91,81,109,81);


//chopstick left
smooth();
stroke(75,46,17);
strokeJoin(ROUND);
strokeWeight(2);
fill(124,78,32);
quad(10,30,30,17,205,286,200,289);

smooth();
stroke(232,205,178);
strokeWeight(3);
line(22,42,38,31);
line(26,46,42,35);

//viber
smooth();
stroke(54,32,10);
strokeCap(SQUARE);
strokeWeight(3);
line(196,230,203,240);
line(210,232,216,243);






//shadow
smooth();
noStroke();
fill(155,148,148,75);
ellipse(300,570,180,50);



//hair ball
smooth();
noStroke();
fill(0);
ellipse(230,340,75,70);

ellipse(370,340,75,70);

//hair cute
smooth();
noStroke();
fill(219,2,93);
ellipse(370,340,75,8);
ellipse(230,340,75,8);

//head
smooth();
fill(0);
ellipse(width/2,height/2,200,150);

//face
fill(255,236,219);
ellipse(width/2,410,170,120);

//body
smooth();
stroke(0);
strokeWeight(5);
strokeJoin(ROUND);
fill(162,8,8);
quad(265,475,335,475,355,560,245,560);

//cloth botton
smooth();
stroke(0);
strokeWeight(3);
strokeCap(ROUND);
line(300,475,310,495);
line(310,495,325,510);

smooth();
stroke(0);
strokeWeight(3);
line(298,483,310,483);
line(300,488,312,488);
line(318,496,307,500);




//hand small
//left
smooth();
stroke(0);
strokeWeight(3);
fill(255,236,219);
ellipse(213,535,35,35);

smooth();
stroke(0);
strokeWeight(3);
fill(255,236,219);
ellipse(385,535,35,35);


//hand big
//left
smooth();
stroke(0);
strokeWeight(5);
strokeJoin(ROUND);
fill(162,8,8);
quad(265,475,190,520,240,555,245,550);

//right
smooth();
stroke(0);
strokeWeight(5);
strokeJoin(ROUND);
fill(162,8,8);
quad(335,475,410,520,360,555,355,550);

//legs
//left
smooth();
noStroke();
fill(0);
ellipse(267,560,50,60);

smooth();
noStroke();
fill(0);
ellipse(333,560,50,60);

//mouse
smooth();
stroke(0);
strokeWeight(2);
fill(255);
ellipse(width/2,445,110,30);

//teeth line
smooth();
stroke(0);
strokeWeight(2);
line(300,430,300,460);

//left line
line(273,432,273,458);

//right line
line(327,432,327,458);

//eyes
smooth();
stroke(0);
strokeWeight(5);
//left
line(273,410,240,405);
//right
line(327,410,360,405);

//face point 
smooth();
noStroke();
fill(222,116,173);
ellipse(240,430,15,15);

ellipse(360,430,15,15);