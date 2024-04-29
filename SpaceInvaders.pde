//Start Screen
PImage backgroundImage, logo, cat, eng, esp, back,gtms,gts;
int screenNum=0, maxPoints=0,priorScreen=0;

//Button play
int xPlay,yPlay,sizePlayX,sizePlayY;
boolean playOver;
color playColor, playHighlight;

//Button Settings
int xSettings,ySettings,sizeSettingsX,sizeSettingsY;
boolean settingsOver;
color settingsColor, settingsHighlight;

//Button Exit Game
int xExit,yExit,sizeExitX,sizeExitY;
boolean exitOver;
color exitColor, exitHighlight;

//Easy Level Button
int xEasy,yEasy,sizeEasyX,sizeEasyY;
boolean easyOver,alreadyClickedEasy;
color easyColor, easyHighlight;

//Mid Level Button
int xMid,yMid,sizeMidX,sizeMidY;
boolean midOver,alreadyClickedMid;
color midColor, midHighlight;

//Hard Level Button
int xHard,yHard,sizeHardX,sizeHardY;
boolean hardOver,alreadyClickedHard;
color hardColor, hardHighlight;

//General Volume Buttons
int xGenLow,yGenLow,sizeGenLowX,sizeGenLowY;
boolean genLowOver,alreadyClickedGenLow;
color genLowColor, genLowHighlight;
int xGenMid,yGenMid,sizeGenMidX,sizeGenMidY;
boolean genMidOver,alreadyClickedGenMid;
color genMidColor, genMidHighlight;
int xGenHigh,yGenHigh,sizeGenHighX,sizeGenHighY;
boolean genHighOver,alreadyClickedGenHigh;
color genHighColor, genHighHighlight;

//Music Volume Buttons
int xMLow,yMLow,sizeMLowX,sizeMLowY;
boolean mLowOver,alreadyClickedMLow;
color mLowColor, mLowHighlight;
int xMMid,yMMid,sizeMMidX,sizeMMidY;
boolean mMidOver,alreadyClickedMMid;
color mMidColor, mMidHighlight;
int xMHigh,yMHigh,sizeMHighX,sizeMHighY;
boolean mHighOver,alreadyClickedMHigh;
color mHighColor, mHighHighlight;

//Game Volume Buttons
int xGameLow,yGameLow,sizeGameLowX,sizeGameLowY;
boolean gameLowOver,alreadyClickedGameLow;
color gameLowColor, gameLowHighlight;
int xGameMid,yGameMid,sizeGameMidX,sizeGameMidY;
boolean gameMidOver,alreadyClickedGameMid;
color gameMidColor, gameMidHighlight;
int xGameHigh,yGameHigh,sizeGameHighX,sizeGameHighY;
boolean gameHighOver,alreadyClickedGameHigh;
color gameHighColor,gameHighHighlight;

//Game Screen variables
ArrayList bullets;
ArrayList enemies;
int numCol = 10;
Player player1;
Enemy testEnemy;
boolean keyLeftPressed = false, keyRightPressed = false;
PImage alienImage1,alienImage2,alienImage3,playerImage, lifes;


void setup(){
  size (550, 800);
  
  //Play Button SetUp
  sizePlayX= 200;
  sizePlayY=75;
  xPlay=180;
  yPlay=350;
  playColor=color(250, 228, 30);
  playHighlight=color(250, 210, 30);
        
  //Settings Button Setup
  sizeSettingsX= 200;
  sizeSettingsY=75;
  xSettings=180;
  ySettings=500;
  settingsColor=color(168, 54, 245);
  settingsHighlight=color(107, 20, 166);
  
  //Exit Game Button Setup
  sizeExitX= 200;
  sizeExitY=75;
  xExit=180;
  yExit=650;
  exitColor=color(241, 20, 20);
  exitHighlight=color(209, 14, 14);
 
  //General Volume Buttons
  sizeGenLowX=100;
  sizeGenLowY=25;
  xGenLow=120;
  yGenLow=270;
  genLowColor=color(250, 228, 30);
  genLowHighlight=color(107, 20, 166);
  alreadyClickedGenLow=false;
  sizeGenMidX=100;
  sizeGenMidY=40;
  xGenMid=225;
  yGenMid=255;
  genMidColor=color(250, 228, 30);
  genMidHighlight=color(107, 20, 166);
  alreadyClickedGenMid=false;
  sizeGenHighX=100;
  sizeGenHighY=60;
  xGenHigh=330;
  yGenHigh=235;
  genHighColor=color(250, 228, 30);
  genHighHighlight=color(107, 20, 166);
  alreadyClickedGenHigh=false;
  
  //Music Volume Buttons
  sizeMLowX=100;
  sizeMLowY=25;
  xMLow=120;
  yMLow=405;
  mLowColor=color(250, 228, 30);
  mLowHighlight=color(107, 20, 166);
  alreadyClickedMLow=false;
  sizeMMidX=100;
  sizeMMidY=40;
  xMMid=225;
  yMMid=390;
  mMidColor=color(250, 228, 30);
  mMidHighlight=color(107, 20, 166);
  alreadyClickedMMid=false;
  sizeMHighX=100;
  sizeMHighY=60;
  xMHigh=330;
  yMHigh=370;
  mHighColor=color(250, 228, 30);
  mHighHighlight=color(107, 20, 166); 
  alreadyClickedMHigh=false;
  
  //Game Volume Buttons
  sizeGameLowX=100;
  sizeGameLowY=25;
  xGameLow=120;
  yGameLow=540;
  gameLowColor=color(250, 228, 30);
  gameLowHighlight=color(107, 20, 166);
  alreadyClickedGameLow=false;
  sizeGameMidX=100;
  sizeGameMidY=40;
  xGameMid=225;
  yGameMid=525;
  gameMidColor=color(250, 228, 30);
  gameMidHighlight=color(107, 20, 166);
  alreadyClickedGameMid=false;
  sizeGameHighX=100;
  sizeGameHighY=60;
  xGameHigh=330;
  yGameHigh=505;
  gameHighColor=color(250, 228, 30);
  gameHighHighlight=color(107, 20, 166); 
  alreadyClickedGameHigh=false;
  
  //Easy Level Button SetUp
  sizeEasyX=120;
  sizeEasyY=60;
  xEasy=50;
  yEasy=650;
  easyColor=color(250, 228, 30); 
  easyHighlight=color(250, 210, 30);
  alreadyClickedEasy=false;
  
  //Mid Level Button SetUp
  sizeMidX=120;
  sizeMidY=60;
  xMid=210;
  yMid=650;
  midColor=color(226, 46, 122); 
  midHighlight=color(183, 41, 100);
  alreadyClickedMid=false;

  //Hard Level Button SetUp
  sizeHardX=120;
  sizeHardY=60;
  xHard=370;
  yHard=650;
  hardColor=color(168, 54, 245);
  hardHighlight=color(107, 20, 166);
  alreadyClickedHard=false;
  
  //Game screen 
   imageMode(CENTER);
   alienImage1 = loadImage("LowAlien1.png");
   alienImage2 = loadImage("MidAlien1.png");
   alienImage3=loadImage("TopAlien1.png");
   
   playerImage=loadImage("player.png");
   startGame();
  }


void draw(){
  update(mouseX, mouseY);
  background(0);
  
  backgroundImage = loadImage("background.png");
  backgroundImage.resize(550, 1000);
  image(backgroundImage,275,500);
  
  switch(screenNum){
    //Start screen
    case 0:      
      createStartScreenButtonsAndPictures();
      
      fill(250,228,30); 
      textSize(40);
      text("Best Score: ",195,850);
      
      fill(250,228,30); 
      textSize(40);
      text(maxPoints,195,910);
      
      break;   
    
    //Game Screen
    case 1:    
      createGameScreen();
      
      if (player1.lifes <= 0){
        startGame();
      }
      showLifes();
      player1.display();
      movePlayer1();
      player1.hitCheck();
      handleEnemies();
      handleBullets();
      
      break;
      
    //Settings Screen
    case 2:
      fill(250,228,30);
      textSize(80);
      text("SETTINGS",115,150);
        
      fill(250,228,30);
      textSize(30);
      text("General Volume: ",175,225);
      
      fill(250,228,30);
      textSize(30);
      text("Music Volume: ",190,360);
      
      fill(250,228,30);
      textSize(30);
      text("Game Volume: ",190,490);
      
      fill(250,228,30);
      textSize(30);
      text("Dificulty Level: ",190,625);
      
      fill(250,228,30);
      textSize(20);
      text("© Arnau Barra Garcia i Carlota Sarrate Riera",105,920);
      
      createSettingScreenButtonsAndPictures();    
      break;
    }
}  

public void createSettingScreenButtonsAndPictures(){ 
  //Back to mainScreen button
  back=loadImage("back.png"); 
  back.resize(60, 60);
  image(back, 30, 30);
  
  //General Volume Buttons
  if(genLowOver || alreadyClickedGenLow){
    fill(genLowHighlight);
  } else{
    fill(genLowColor);
  }
  rect(xGenLow,yGenLow,sizeGenLowX,sizeGenLowY,15);
  if(genMidOver || alreadyClickedGenMid){
    fill(genMidHighlight);
  } else{
    fill(genMidColor);
  }
  rect(xGenMid,yGenMid,sizeGenMidX,sizeGenMidY,15);
  if(genHighOver|| alreadyClickedGenHigh){
    fill(genHighHighlight);
  } else{
    fill(genHighColor);
  }
  rect(xGenHigh,yGenHigh,sizeGenHighX,sizeGenHighY,15);
  
  //Music Volume Buttons
  if(mLowOver|| alreadyClickedMLow){
    fill(mLowHighlight);
  } else{
    fill(mLowColor);
  }
  rect(xMLow,yMLow,sizeMLowX,sizeMLowY,15); 
  if(mMidOver|| alreadyClickedMMid){
    fill(mMidHighlight);
  } else{
    fill(mMidColor);
  }
  rect(xMMid,yMMid,sizeMMidX,sizeMMidY,15);  
  if(mHighOver|| alreadyClickedMHigh){
    fill(mHighHighlight);
  } else{
    fill(mHighColor);
  }
  rect(xMHigh,yMHigh,sizeMHighX,sizeMHighY,15);
  
  //Game Volume Buttons
  if(gameLowOver || alreadyClickedGameLow){
    fill(gameLowHighlight);
  } else{
    fill(gameLowColor);
  }
  rect(xGameLow,yGameLow,sizeGameLowX,sizeGameLowY,15);
  if(gameMidOver || alreadyClickedGameHigh){
    fill(gameMidHighlight);
  } else{
    fill(gameMidColor);
  }
  rect(xGameMid,yGameMid,sizeGameMidX,sizeGameMidY,15);
  if(gameHighOver|| alreadyClickedGameHigh){
    fill(gameHighHighlight);
  } else{
    fill(gameHighColor);
  }
  rect(xGameHigh,yGameHigh,sizeGameHighX,sizeGameHighY,15);
  
  //Level buttons
  if(easyOver || alreadyClickedEasy){
    fill(easyHighlight);
  } else{
    fill(easyColor);
  }
  rect(xEasy,yEasy,sizeEasyX,sizeEasyY,15);
  fill(0);
  textSize(30);
  text("EASY", 80, 690);
      
  if(midOver || alreadyClickedMid){
    fill(midHighlight);
  } else{
    fill(midColor);
  }
  rect(xMid,yMid,sizeMidX,sizeMidY,15);
  fill(0);
  textSize(30);
  text("MEDIUM", 220, 690);
      
  if(hardOver || alreadyClickedHard){
    fill(hardHighlight);
  } else{
    fill(hardColor);
  }
  rect(xHard,yHard,sizeHardX,sizeHardY,15);
  fill(0);
  textSize(30);
  text("HARD", 395, 690);
     
}

public void createStartScreenButtonsAndPictures(){
  //Game Logo Image
  logo=loadImage("Logo.png"); 
  image(logo, 275, 200);
      
  //Start Playing Button    
  if(playOver){
        fill(playHighlight);
      } else{
        fill(playColor);
      }
      rect(xPlay,yPlay,sizePlayX,sizePlayY,15);
      fill(0);
      textSize(40);
      text("PLAY", 235, 400);
      
      //Settings Button
      if(settingsOver){
        fill(settingsHighlight);
      } else{
        fill(settingsColor);
      }
      rect(xSettings,ySettings,sizeSettingsX,sizeSettingsY,15);
      fill(0);
      textSize(40);
      text("SETTINGS", 196, 550);
      
      //close game button
      if(exitOver){
        fill(exitHighlight);
      } else{
        fill(exitColor);
      }
      rect(xExit,yExit,sizeExitX,sizeExitY,15);
      fill(0);
      textSize(40);
      text("EXIT", 240, 705);
      
}

public void createGameScreen(){
  //Game to mainScreen button
  gtms=loadImage("home.png"); 
  gtms.resize(60, 60);
  image(gtms, 40, 40);
  
  //Game to settings button
  gts=loadImage("settings.png"); 
  gts.resize(60, 60);
  image(gts, 500, 40);
}

void update(int x, int y) {
  //Play, Setting and Exit Game Buttons
  if ( overButton(xPlay, yPlay, sizePlayX,sizePlayY) ) {
    playOver = true;
    settingsOver = false;
    exitOver=false;
  } else if ( overButton(xSettings, ySettings, sizeSettingsX,sizeSettingsY) ) {
    settingsOver = true;
    playOver = false;
    exitOver=false;
  }else if(overButton(xExit, yExit, sizeExitX,sizeExitY)){
    settingsOver = false;
    playOver = false;
    exitOver=true;   
  } else {
    playOver = settingsOver = exitOver=false;
  } 
  
  //Difficulty Level Buttons
  if (overButton(xEasy, yEasy, sizeEasyX,sizeEasyY)){
    easyOver=true;
    midOver=false;
    hardOver=false;
  } else if(overButton(xMid, yMid, sizeMidX,sizeMidY)){
    easyOver=false;
    midOver=true;
    hardOver=false;
  }else if(overButton(xHard, yHard, sizeHardX,sizeHardY)){
    easyOver=false;
    midOver=false;
    hardOver=true;
  } else {
    easyOver=midOver=hardOver=false;
  }
  
  //General Volume Buttons
  if (overButton(xGenLow, yGenLow, sizeGenLowX,sizeGenLowY)){
    genLowOver=true;
    genMidOver=false;
    genHighOver=false;
  } else if(overButton(xGenMid, yGenMid, sizeGenMidX,sizeGenMidY)){
    genLowOver=false;
    genMidOver=true;
    genHighOver=false;
  }else if(overButton(xGenHigh, yGenHigh, sizeGenHighX,sizeGenHighY)){
    genLowOver=false;
    genMidOver=false;
    genHighOver=true;
  } else {
    genLowOver=genMidOver=genHighOver=false;
  }
  
  //Music Volume Buttons
  if (overButton(xMLow, yMLow, sizeMLowX,sizeMLowY)){
    mLowOver=true;
    mMidOver=false;
    mHighOver=false;
  } else if(overButton(xMMid, yMMid, sizeMMidX,sizeMMidY)){
    mLowOver=false;
    mMidOver=true;
    mHighOver=false;
  }else if(overButton(xMHigh, yMHigh, sizeMHighX,sizeMHighY)){
    mLowOver=false;
    mMidOver=false;
    mHighOver=true;
  } else {
    mLowOver=mMidOver=mHighOver=false;
  }
  
  //Game Volume Buttons
  if (overButton(xGameLow, yGameLow, sizeGameLowX,sizeGameLowY)){
    gameLowOver=true;
    gameMidOver=false;
    gameHighOver=false;
  } else if(overButton(xGameMid, yGameMid, sizeGameMidX,sizeGameMidY)){
    gameLowOver=false;
    gameMidOver=true;
    gameHighOver=false;
  }else if(overButton(xGameHigh, yGameHigh, sizeGameHighX,sizeGameHighY)){
    gameLowOver=false;
    gameMidOver=false;
    gameHighOver=true;
  } else {
    gameLowOver=gameMidOver=gameHighOver=false;
  }
}

//Check Mouse Position
boolean overButton(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void mouseClicked(){
  switch (screenNum){
    case 0:
      if((mouseX>=180)&&(mouseX<=380)&&(mouseY>=350)&&(mouseY<=425)){  
        screenNum=1; 
      } else if ((mouseX>=180)&&(mouseX<=380)&&(mouseY>=500)&&(mouseY<=575)){    
        screenNum=2;
        
      }else if ((mouseX>=180)&&(mouseX<=380)&&(mouseY>=650)&&(mouseY<=725)){    
        exit();
      }
      priorScreen=0;
     break;
     case 1:
       if((mouseX>=20)&&(mouseX<=80)&&(mouseY>=20)&&(mouseY<=80)){  
          screenNum=0;
        } else if ((mouseX>=470)&&(mouseX<=530)&&(mouseY>=20)&&(mouseY<=80)){    
          screenNum=2;
        } 
        priorScreen=1;
       break;
     case 2:
       if((mouseX>=20)&&(mouseX<=80)&&(mouseY>=20)&&(mouseY<=80)){  
         if(priorScreen==0){
           screenNum=priorScreen;
         }else if(priorScreen==1){
           screenNum=priorScreen;
         }
         priorScreen=2;
      }
      
      //General Buttons Clicked
      //General Volume Buttons Clicked
      if((mouseX>=120)&&(mouseX<=220)&&(mouseY>=270)&&(mouseY<=295)){
        if(alreadyClickedGenLow){
          alreadyClickedGenLow=false;
          alreadyClickedGenMid=false;
          alreadyClickedGenHigh=false;
        }else{
          alreadyClickedGenLow=true;
        }
      } else if((mouseX>=225)&&(mouseX<=325)&&(mouseY>=255)&&(mouseY<=295)){
        if(alreadyClickedGenMid){
          alreadyClickedGenMid=false;
          alreadyClickedGenHigh=false;
        }else{
          alreadyClickedGenMid=true;
          alreadyClickedGenLow=true;
        } 
      }else if((mouseX>=330)&&(mouseX<=430)&&(mouseY>=235)&&(mouseY<=295)){
        if(alreadyClickedGenHigh){
          alreadyClickedGenHigh=false;
        }else{
          alreadyClickedGenHigh=true;
          alreadyClickedGenMid=true;
          alreadyClickedGenLow=true;
        } 
      }
      
      //Music Volume Buttons
      if((mouseX>=120)&&(mouseX<=220)&&(mouseY>=405)&&(mouseY<=430)){
        if(alreadyClickedMLow){
          alreadyClickedMLow=false;
          alreadyClickedMMid=false;
          alreadyClickedMHigh=false;
        }else{
          alreadyClickedMLow=true;
        }
      } else if((mouseX>=225)&&(mouseX<=325)&&(mouseY>=390)&&(mouseY<=430)){
        if(alreadyClickedMMid){
          alreadyClickedMMid=false;
          alreadyClickedMHigh=false;
        }else{
          alreadyClickedMMid=true;
          alreadyClickedMLow=true;
        } 
      }else if((mouseX>=330)&&(mouseX<=430)&&(mouseY>=370)&&(mouseY<=430)){
        if(alreadyClickedMHigh){
          alreadyClickedMHigh=false;
        }else{
          alreadyClickedMHigh=true;
          alreadyClickedMMid=true;
          alreadyClickedMLow=true;
        } 
      }
      
      //Game Volume Buttons
      if((mouseX>=120)&&(mouseX<=220)&&(mouseY>=540)&&(mouseY<=565)){
        if(alreadyClickedGameLow){
          alreadyClickedGameLow=false;
          alreadyClickedGameMid=false;
          alreadyClickedGameHigh=false;
        }else{
          alreadyClickedGameLow=true;
        }
      } else if((mouseX>=225)&&(mouseX<=325)&&(mouseY>=525)&&(mouseY<=565)){
        if(alreadyClickedGameMid){
          alreadyClickedGameMid=false;
          alreadyClickedGameHigh=false;
        }else{
          alreadyClickedGameMid=true;
          alreadyClickedGameLow=true;
        } 
      }else if((mouseX>=330)&&(mouseX<=430)&&(mouseY>=505)&&(mouseY<=565)){
        if(alreadyClickedGameHigh){
          alreadyClickedGameHigh=false;
        }else{
          alreadyClickedGameHigh=true;
          alreadyClickedGameMid=true;
          alreadyClickedGameLow=true;
        } 
      }
      
      //Level Buttons
      if((mouseX>=50)&&(mouseX<=170)&&(mouseY>=650)&&(mouseY<=710)){
        if(alreadyClickedEasy){
          alreadyClickedEasy=false;
        }else{
          alreadyClickedEasy=true;
          alreadyClickedMid=false;
          alreadyClickedHard=false;      
        }
        
      } else if((mouseX>=220)&&(mouseX<=330)&&(mouseY>=650)&&(mouseY<=710)){
        if(alreadyClickedMid){
          alreadyClickedMid=false;
        }else{
          alreadyClickedEasy=false;
          alreadyClickedMid=true;
          alreadyClickedHard=false;
        } 
      }else if((mouseX>=370)&&(mouseX<=490)&&(mouseY>=650)&&(mouseY<=710)){
        if(alreadyClickedHard){
          alreadyClickedHard=false;
        }else{
          alreadyClickedEasy=false;
          alreadyClickedMid=false;
          alreadyClickedHard=true;
        } 
      }
      break;     
  }   
}
 
void startGame(){
  player1 = new Player();
  bullets = new ArrayList();
  enemies = new ArrayList();
  generateEnemies(); 
}

void checkEnemiesWall(){
  boolean anyTouchingWall = false;
  for (int i = 0; i < enemies.size(); i++){
    Enemy enemy = (Enemy) enemies.get(i);   
  }
}
 
 
void showLifes(){
  for (int i = 1; i <= player1.lifes; i++){
    lifes=loadImage("heart.png");
    image(lifes,width-50*i, 110, 40, 40);
    
  } 
}
 
void generateEnemies() {
  for(int j=0; j<=3;j++){
    for (int i = 0; i < 10; i++) {
      float x = width*0.1 + i%numCol*50;
      float y = 140+(j*60) + int(i/numCol)*60;
      
      if(j==1){
        enemies.add(new Enemy(x, y,alienImage1));
      }else if (j==2){
        enemies.add(new Enemy(x, y,alienImage2));
      }else if(j==3){
        enemies.add(new Enemy(x, y,alienImage3));
      }
    }
  }
  
}
 
void handleEnemies() {
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    enemy.move();
    enemy.display();
    enemy.hitCheck();
    if (random(1) > .997) {
      enemy.shoot();
    }
  }
}
 
 
void handleBullets() {
  for (int i = 0; i < bullets.size(); i++) {
    Bullet b = (Bullet) bullets.get(i);
    b.move();
    b.display();
  }
}
 
void movePlayer1() {
  if (keyLeftPressed) {
    player1.x -=10;
  }
  if (keyRightPressed) {
    player1.x +=10;
  }
}
 
void keyPressed() {
  if(key==CODED){
    if (keyCode == LEFT) {
      keyLeftPressed = true;
    }else if (keyCode == RIGHT) {
      keyRightPressed = true;

    }
  } else if(key== ' '){
    player1.shoot();  
  }
}
 
void keyReleased() {
  if(key==CODED){
    if (keyCode == LEFT) {
      keyLeftPressed = false;
    }
    else {
      if (keyCode == RIGHT) {
        keyRightPressed = false;
      }
    }
  }
}  
 

//Bullet
class Bullet {
  float x, y;
  float velocity;
  int[] bulletColor= new int[3];
 
  Bullet(float x, float y, float velocity, int[] colors) {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
    this.bulletColor=colors;
  }
   
  void display(){
    fill(bulletColor[0],bulletColor[1],bulletColor[2]);
    rect(this.x, this.y, 5,20);
  }
   
  void move(){
    this.y+=this.velocity;
    if (this.y > height || this.y < 140){
      bullets.remove(this);
    }
  }
}
 
//Enemy 
class Enemy {
  float x, y;
  float velocity;
  PImage img;
  
  Enemy(float x, float y,PImage alienImage) {
    this.x = x;
    this.y = y;
    this.velocity = 3;
    this.img = alienImage;
  }
  
  void display() {
    image(img, this.x, this.y);
  }
 
  void move() {
    this.x+=this.velocity;
    if (this.x > width*.98) {
      this.x = width*.9;
      this.velocity *= -1;
      this.y+=30;
    }
 
    if (this.x < width*.02) {
      this.velocity*=-1;
      this.x = width*.1;
      this.y+=30;
    }  
    if(this.y>800){
      enemies.remove(this);
    }
  }  
   
  void shoot(){
    int[] bulletColor={168, 54, 245};
    Bullet b = new Bullet(this.x, this.y, 5,bulletColor);
    bullets.add(b);
  }
 
  void hitCheck() {
    for (int i = 0; i < bullets.size(); i++){
      Bullet b = (Bullet) bullets.get(i);      
      float distBetween = dist(b.x, b.y, this.x, this.y);
      if (distBetween < 20 && b.velocity < 0){
        enemies.remove(this);
        bullets.remove(b);
      }
    }
  }
}
 
//Geometry 
boolean rectIntersect(float x1, float y1, float w1, float h1, float x2, float y2, float w2, float h2) {
 
  float[] r1 = new float[8];
  float[] r2 = new float[8];
 
   r1[0] = x1;
   r1[1] = y1;
   r1[2] = x1+w1;
   r1[3] = y1+h1;
   r1[4] = r1[0];
   r1[5] = r1[3];
   r1[6] = r1[2];
   r1[7] = r1[1];
 
   r2[0] = x2;
   r2[1] = y2;
   r2[2] = x2+w2;
   r2[3] = y2+h2;
   r2[4] = r2[0];
   r2[5] = r2[3];
   r2[6] = r2[2];
   r2[7] = r2[1];
   
  boolean intersect = false;
   
  for (int i = 0; i < 8; i=i+2){
    if (pointInRectangle(r2[0], r2[2], r2[1], r2[3], r1[i], r1[i+1])){
    intersect = true;
    }
  }
   
  for (int i = 0; i < 8; i=i+2){
    if (pointInRectangle(r1[0], r1[2], r1[1], r1[3], r2[i], r2[i+1])){
    intersect = true;
    }
  }
  return intersect;
}
 
boolean isBetween(float v1, float v2, float test) {
  if (test < v1 && test > v2) {
    return true;
  }
  else {
    if (test > v1 && test < v2) {
      return true;
    }
    else {
      return false;
    }
  }
}
 
boolean pointInRectangle(float x1, float x2, float y1, float y2, float xT, float yT) {
  if (((xT < x1 && xT > x2) || (xT > x1 && xT < x2)) && 
    ((yT < y1 && yT > y2) || (yT > y1 && yT < y2))) {
    return true;
  }
  else {
    return false;
  }
}
 
//Player
class Player {
  float x, y;
  int lifes;
  int score;
  boolean canShoot;
  int timeLastShot;
  int coolDown;
 
  Player() {
    this.x = width/2;
    this.y = height-50;
    this.lifes = 3;
    this.timeLastShot = 0;
    this.coolDown = 2000;
  }
 
  void display() {
    playerImage.resize(40,20);
    image(playerImage, this.x,this.y);
    if(this.x<=30){
      this.x=30;
    }else if(this.x>=520){
      this.x=520;
    }
  }
 
  void shoot() {
    if (millis() - timeLastShot > coolDown) {
      int[] bulletColor={250, 228, 30};
      Bullet bullet = new Bullet(this.x+12.5, this.y, -5,bulletColor);
      bullets.add(bullet);
      timeLastShot = millis();
    }
  }
 
  void hitCheck() {
    for (int i = 0; i < bullets.size(); i++) {
      Bullet b = (Bullet) bullets.get(i);
      float distBetween = dist(b.x, b.y, this.x, this.y);
      if (b.velocity > 0 && rectIntersect(this.x, this.y, 40, 20, b.x, b.y, 5, 20)) {
        this.die();
        bullets = new ArrayList();
      }
    }
  }
 
  void die() {
    this.lifes--;
  }
}
