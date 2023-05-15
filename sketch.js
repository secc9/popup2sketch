


/* This is my final project app
Utopianwash(working title)
 */




/////////////////
//variables for timing
let mill;
////////////////
//variables for swordquest
let bCloud1, bCloud2, bCloud3, bCloud4, bCloud5, bCloud6, bCloud7, bCloud8, bCloud9;
let swordquestBackground;
//////////////////////////
//variables for Tamagotchi
let tamBackground;
let smlStar00;
let smlStar01;
let smlStar02;
let smlStar03;
let smlStar04;
let medStar00;
let medStar01;
let medStar02;
////////////////////////////////////
//variables for custers revenge
let cloudGroupLeft;
let cloudGroupRight;
let rCR = 118;
let gCR = 131;
let bCR = 239;

let cRdir = 0.1;
let cGdir = 0.005;
let cBdir = -0.16;
let s = 0;
let a = 255;
//////////////////////////////////
//variables for ROBOCOP 2
let gRC = 130;
let bRC = 0;
let move = 0;
///////////////////////////////////////////
//variables for Game and Watch
let xPos;
let yPos;

let cloud = [];
////////////////////////////////////
// variables for the word visualiser
let words;
let currIdx = 0;
///////////////////////////////////////
// variables for Sonic’s Edusoft
let rectY = 147.5;
let yy = 0;
let sunDir = -0.3;
///////////////////////////////////////

function setup() {
  createCanvas(windowWidth, windowHeight);
  //frameRate(60);
///////////////////////////////////////////////////

mill = millis();
  /////////////////////////////////////
  //swordquest
  bCloud1 = new basicCloud(100, 200, 40, 10, 255, 255, 255, 100);
  bCloud2 = new basicCloud(400, 200, 40, 10, 255, 255, 255, 100);
  bCloud3 = new basicCloud(700, 200, 40, 10, 255, 255, 255, 100);
  bCloud4 = new basicCloud(500, 400, 340, 10, 255, 255, 255, 150);
  bCloud5 = new basicCloud(1200, 500, 140, 10, 255, 255, 255, 200);
  bCloud6 = new basicCloud(50, 700, 40, 10, 255, 255, 255, 50);
  bCloud7 = new basicCloud(170, 700, 30, 10, 255, 255, 255, 50);
  bCloud8 = new basicCloud(500, 900, 240, 10, 255, 255, 255, 70);
  bCloud9= new basicCloud(1800, 400, 40, 10, 255, 255, 255, 90);
  /////////////////////////////////////////////////////

  /////////////////////////////////////
//tamagotchi
smlStar00 = new smallStar(0, 0, 10, this.alpha);
smlStar01 = new smallStar(0, 0, 10, this.alpha);
smlStar02 = new smallStar(0, 0, 10, this.alpha);
smlStar03 = new smallStar(0, 0, 10, this.alpha);
smlStar04 = new smallStar(0, 0, 10, this.alpha);
medStar00 = new mediumStar(200, 200, this.alpha);
medStar01 = new mediumStar(200, 200, this.alpha);
medStar02 = new mediumStar(200, 200, this.alpha);
////////////////////////////////////

/////////////////////////////////////
//custers revenge
cloudGroupLeft = new cloudGroup(-100, 10,  s, a );
cloudGroupRight = new cloudGroup(400, 10, s, a);
  /////////////////////////////////////

  /////////////////////////////////////
  //Game and Watch
  for(let i = 0; i < 30; i ++){
    let x = -8500 + 300 * i;
  //	let y = 10 + 30 * i
    cloud[i] = new myLittleCloud(x+random(0, 300), random(0, 400));
  }
  /////////////////////////////////////

  /////////////////////////////////////
  ///////////////////////////////////////
//Sonics edusoft


  //word visualiser
  words = loadStrings('political_slogans.txt');
}
/////////////////////////////////////
/////////////////////////////////////
/////////////////////////////////////



function draw() {
  background(255);

  //////////////////////////////////
//SWORDQUESRT
swordquestBackground = background(32, 56, 150)

if(frameCount >=0){
swordquestBackground; 
  
bCloud1.show();
bCloud1.move();
bCloud2.show();
bCloud2.move();
bCloud3.show();
bCloud3.move();
bCloud4.show();
bCloud4.move();
bCloud5.show();
bCloud5.move();
bCloud6.show();
bCloud6.move();
bCloud7.show();
bCloud7.move();
bCloud8.show();
bCloud8.move();
bCloud9.show();
bCloud9.move();
}
///////////////////////////////////////////

/////////////////////////////////////
//tamagotchi
if(frameCount >= 5000){ //FRAMECOUNT
  background(74);

  tamBackground=background(74, 74, 74, 200);
tamBackground;
smlStar00.show();
smlStar00.move();
smlStar01.show();
smlStar01.move();
smlStar02.show();
smlStar02.move();
smlStar03.show();
smlStar03.move();
smlStar04.show();
smlStar04.move();

medStar00.show();
medStar00.move();
medStar01.show();
medStar01.move();
medStar02.show();
medStar02.move();
}
////////////////////////////////////

/////////////////////////////////////
//custers revenge

if(frameCount >= 10000){ //FRAMECOUNT
  background(255);

  background(rCR, gCR, bCR);
    
    cloudGroupLeft.show(s);
    cloudGroupLeft.move();
    cloudGroupRight.show(s);
    cloudGroupRight.move();
    frameRate(30);    
  
    rCR = rCR + cRdir;
    gCR = gCR + cGdir;
    bCR = bCR + cBdir;
    
    // change the background

    if(rCR < 118 || rCR > 203){
	cRdir *= -1;

    }

    if(gCR < 131 || gCR > 136){
	cGdir *= -1;
    }

    if(bCR > 239 || bCR < 85){
	cBdir *= -1;
    }

//     if(frameCount >=15000){

//     }
}
///////////////////////////////////////////

/////////////////////////////////////
//ROBOCOP2

if(frameCount >= 15000){ //FRAMECOUNT
  background(255);
  background(105, 147, 245);
  w = 100000;
  noStroke();
  fill(gRC);
  rect(0, height/2 + move, width+w, 5);
  rect(0, height/2.3+ move, width+w, 5);
  rect(0, height/2.7+ move, width+w, 5);
  rect(0, height/3+ move, width+w, 10);
  rect(0, height/3.4+ move, width+w, 12);
  rect(0, height/3.9+ move, width+w, 20);
  rect(0, height/4.5+ move, width+w, 22);
  rect(0, 0- move, width+w, 190);

  fill(bRC);

  rect(0, 0+ move, width+w, 20);
  rect(0, 30+ move, width+w, 20);
  rect(0, 60+ move, width+w, 18);
  rect(0, 100+ move, width+w, 10);
  rect(0, 130+ move, width+w, 5);
  rect(0, 160+ move, width+w, 5);


  if(move < 5 || move > 0){
move *= -1;
  }


  move = move + 0.5;

}
///////////////////////////////////////////

/////////////////////////////////////
//Game and Watch


if(frameCount >= 20000){ //FRAMECOUNT
background(255);
  for(let i =0; i < cloud.length; i++){ 
	cloud[i].show();
	cloud[i].move();
    }
  }
///////////////////////////////////////

///////////////////////////////////////
//Sonics edusoft

if(frameCount >= 25000){ //FRAMECOUNT
  background(190, 253, 254);


  noStroke()
  //dark blue rect sky
  fill(83, 85, 246);
  rect(width/2, rectY, width, 300);

  // light blue rect sky
  fill(105, 168, 248);
  rect(width/2, rectY+300, width, 300);

  

  //light bliue shade in
  for(let i = 0; i < width; i += 20){
let x = 20;
let y = 250;
let yA = 30;
let xA = 25;
let s = 5;
fill(105, 168, 248);
rect(x + i, y, s );
rect(x + i-10, y + 10, s)
rect(x + xA + i, y+25, s);
rect(x + i, y +35, s);
rect(x+ i-10, y+35, s);
rect(x+i-5 , y+40, s);
rect(x+ i, y+45, s);
rect(x+ i-10, y+45, s);

  }



  //dark blue shade in
  for(let i = 0; i < width; i += 20){
let s = 5;
let x = 0;
let y = 300
fill(83, 85, 246);
rect(x + i, y, s);
rect(x + i - 10, y+5, s);
rect(x + i , y + 10, s);
  }
  for(let i=0; i < width; i += 40){
let s = 5;
let x = 0;
let y = 320;
fill(83,  85, 246);
rect(x + i - 10 , y, s)}

      //white shade in
  for(let i = 0; i < width; i += 20){
let x = 20;
let y = 550;
let yA = 30;
let xA = 25;
let s = 5;
fill(190, 253, 254);
rect(x + i, y, s );
rect(x + i-10, y + 10, s)
rect(x + xA + i, y+25, s);
rect(x + i, y +35, s);
rect(x+ i-10, y+35, s);
rect(x+i-5 , y+40, s);
rect(x+ i, y+45, s);
rect(x+ i-10, y+45, s);
  }

      //light blue shade out
  for(let i = 0; i < width; i += 20){
let s = 5;
let x = 0;
let y = 600
fill(105, 168, 248);
rect(x + i, y, s);
rect(x + i - 10, y+5, s);
rect(x + i , y + 10, s);
  }
  for(let i=0; i < width; i += 40){
let s = 5;
let x = 0;
let y = 620;
fill(105,  168, 248);
rect(x + i - 10 , y, s)}


  

  sun(width/2, height-yy);


  yy = yy - sunDir;


  
  if(yy < 0 || yy > 1000){

sunDir *= -1;;
  }
}




///////////////////////////////////////////

///////////////////////////////////////////
/*
word visualiser
*/
  textAlign(CENTER);
  textSize(100);
  //noFill()
  fill(200, 20, 200, 150);
 // stroke(0);
  //strokeWeight(2);
  text(words[currIdx], width/2, height/2, 1000);
  if(frameCount % 500 === 0){
    currIdx +=1;
  }

  if(currIdx >= words.length){
    currIdx = 0;
  }
  



  
  if(frameCount >= 30000){
    frameCount = 0;

  }

  console.log(frameCount);




}



//////////////////////////////////
/*
CLASSES AND FUNCTIONS
*/

//SWORDQUEST
class basicCloud{
  constructor(x, y, w, h, r, g, b, alpha){
this.x = x;
this.y = y;
this.w = w;
this.h = h;
this.r = r;
this.g = g;
this.b = b;
this.alpha = alpha;
  }
  move(){
//	this.alpha = this.alpha + frameRate % 200;
this.x = this.x + 0.05;
  }
  show(){
let sz = 0.3;
let sz1 = sz*3;
let sz2 = sz*5;
let sz3 = sz*7;
noStroke();
rectMode(CENTER);
fill(this.r, this.g, this.b, this.alpha);
rect(this.x, this.y-30, this.w * sz, this.h);
rect(this.x, this.y-20, this.w * sz1, this.h);
rect(this.x, this.y-10, this.w * sz2, this.h);
rect(this.x, this.y, this.w * sz3, this.h);
  }
}


////////////////////////////////////////////
//Tamagotchi

class smallStar{
    
  constructor(x, y, sz, alpha){

this.x = x;
this.y = y;
this.sz = sz
this.alpha = alpha;
  }

  move(){
    if(frameCount % 100 === 0){
this.x = random(width);
this.y = random(height);
this.alpha = random(0, 255)
    }
  }

  show(){
let sz = 10;
let alpha;
noStroke()
rectMode(CENTER);
fill(255, alpha);
rect(this.x, this.y, this.sz);
}
  }

class mediumStar{
  constructor(x, y, alpha){
    
this.x = x;
this.y = y;
this.alpha = alpha;
  }
  move(){
    if(frameCount % 100 === 0){
this.x = random(width);
this.y = random(height);
this.alpha = random(0, 255);
    }
  }
  show(){
let sz = 1;
let alpha;
noStroke();
rectMode(CENTER);
fill(255, alpha);
rect(this.x, this.y, 20-sz, 8-sz);
rect(this.x, this.y, 8-sz, 20-sz);
  }
}

////////////////////////////////////
//custers revenge


class cloudGroup{

  constructor(x, y, s, a){
this.x = x;
this.y = y;
this.s = s;
this.a = a
  }

  move(){
//	 this.a =  frameCount % 100;
this.s = this.s + 0.02;		
  if(rCR < 118 || rCR > 203){

this.s = 0;
  }

  }

  show(){

leftCloud(this.x, this.y, this.s, this.a);
centerCloud(this.x, this.y, this.s, this.a);
rightCloud(this.x, this.y, this.s, this.a);	
  }
}


function leftCloud(x, y, s){
 
  //left cloud

  let h = 22;
  
  
  rectMode(CENTER);
  noStroke();
  fill(255, a);
  push()
  translate(x, y);
  
  rect(x+410,y+ 200, 70+s, h+s);
  rect(x+430,y+ 220, 200+s, h+s);
  rect(x+460,y+ 240, 70+s, h+s);
  pop();
}


function centerCloud(x, y, s){

  let h = 22;
  
  //center cloud
  rectMode(CENTER);
  noStroke();
  fill(255, a);
  push();
  translate(x, y);
 
  rect(x+590, y+280, 80+s, h*3+s);
  rect(x+590, y+280, 160+s, h+s);
  pop();
  
}

function rightCloud(x, y, s){
  let h = 22;

  //right cloud

  rectMode(CENTER);
  noStroke();
  fill(255, a);
  push();
  translate(x, y);
  rect(x+ 760, y + 200, 70+s, h+s);
  rect(x + 740, y+ 220, 200+s, h+s);
  rect(x + 720, y + 240, 70+s, h+s);
  pop();
}
/////////////////////////////////////////
///////////////////////////////////////////
//Game and Watch
class myLittleCloud{

  constructor(x, y){
this.x = x;
this.y = y;
  }

  move(){
this.x = this.x + 0.5;
  }

  show(){

littleCloud(this.x, this.y);
  }
  
}






function littleCloud(x, y){


  let a = 55
  let h = 10
  rectMode(CENTER);
  noStroke();
  fill(148)


  rect(x, y, 100, h); //top of cloud
 
  rect(x, y+ h*5, 100, h);  //bottom of cloud
 
  rect(x-a, y+h, h, h); //top left block
  rect(x+a, y+h, h, h); //top right block

  
  rect(x-a, y+h*4, h, h); //bottom left block
  rect(x+a, y+h*4, h, h); //bottom right block

  rect(x-a-10, y+h*2.5, h, h*2); //left block
  rect(x+a+10, y+h*2.5, h, h*2); //right block
}

///////////////////////////////////////

///////////////////////////////////////
//Sonics edusoft
function sun(sunX, sunY){


  //sun
  let w = 40;
  let h = 12;
  noSmooth();
  fill(255, 255, 84, 100);
//   ellipse(x, y+95, 200, 200);


  fill(255, 255, 0);
  
  rect(sunX, sunY, w, h);
  rect(sunX, sunY+10, w*2, h);
  rect(sunX, sunY+20, w*3, h);
  rect(sunX, sunY+30, w*3.5, h);
  rect(sunX, sunY+40, w* 4, h);
  rect(sunX, sunY+50, w*4.25, h);
  rect(sunX, sunY+60, w*4.6, h);
  rect(sunX, sunY+70, w*4.8, h);
  rect(sunX, sunY+ 80, w*4.9, h);
  rect(sunX, sunY+90, w*5, h);
  rect(sunX, sunY+100, w*5, h);
  rect(sunX, sunY+110, w*4.9, h)
  rect(sunX, sunY+ 120, w*4.8, h);
  rect(sunX, sunY+130, w*4.6, h);
  rect(sunX, sunY+140, w*4.25, h)
  rect(sunX, sunY+150, w* 4, h);
  rect(sunX, sunY+160, w*3.5, h);
  rect(sunX, sunY+170, w*3, h);
  rect(sunX, sunY+180, w*2, h);
  rect(sunX, sunY+190, w, h);
}