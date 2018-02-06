/* @pjs preload="map3.png, stevenson.png, caldwell.png, hake.png, arrow.png, striker.png, richmond.png, chyna.png, mcelveen.png, holland.png, watson.png, reed.png, bostick.png, faulkner.png, mcfadden.png, adams.png, barrin.png, morgan.png, dangerfield.png, song.png, herring.png, redd.png, banner.png, schultz.png, steinfeld.png, montez.png, towns.png, mcglory.png, torres.png";*/
/* @pjs font="Cochin.ttf";*/

interface JavaScript{
  //void showXYCoordinates(int x, int y);
  void playplayer0();
  void playplayer1();
  void playplayer2();
  void playplayer3();
   void playplayer4();
  void playplayer5();
  void playplayer6();
  void playplayer7();
   void playplayer8();
  void playplayer9();
  void playplayer10();
  void playplayer11();
   void playplayer12();
  void playplayer13();
  void playplayer14();
  void playplayer15();
  void playplayer16();
  void playplayer17();
  void playplayer18();
  void playplayer19();
  void playplayer20();
  void playplayer21();
  void playplayer22();
  void playplayer23();
  void playplayer24();
  void playplayer25();
  void playplayer26();
  void playplayer27();
  void stopplayer();
  //void stopplayer0();
  //void playplayer2();
  //void playplayer3();
 // void stopplayers();
}
void bindJavascript(JavaScript js){
  javascript=js;
}

starter beginner;
PFont font;
int flowSelect, flowSelChange, sceneControl, sceneSwap, nCol;
float pocarrayivalue;
individs[] indiArray= new individs[28];
flowers[] flowerArray= new flowers[28];
String[] NAMES= new String[28];
Float[] AGES= new Float[28];
String[] DATES= new String[28];
String[] PICTITLE= new String[28];
Float[] XLOC= new Float[28];    //X and Y locations of flowers determined by actual locations
Float[] YLOC= new Float[28];
Float[] MOVELOC= new Float[28];
Float[] POCARRAY= new Float[28];
JavaScript javascript;

void setup(){
  size(1200,700);
  background(0);
  flowSelect=0;
  flowSelChange=0;
  sceneControl=5;
  beginner= new starter();
  sceneSwap=0;
  font=createFont("Cochin.ttf",60);
  textFont(font);
       //NAMES
   NAMES[0]= "Mesha Caldwell";
   NAMES[1]= "Sean Hake";
   NAMES[2]= "Jamie Lee Wounded Arrow";
   NAMES[3]= "JoJo Striker";
   NAMES[4]= "Tiara Richmond";
   NAMES[5]= "Chyna Doll Dupree";
   NAMES[6]= "Ciara McElveen";
   NAMES[7]= "Jaquarrius Holland";
   NAMES[8]= "Alphonza Watson";
   NAMES[9]= "Chay Reed";
   NAMES[10]= "Kenneth Bostick";
   NAMES[11]= "Sherrell Faulkner";
   NAMES[12]= "Kenne McFadden";
   NAMES[13]= "Kendra Marie Adams";
   NAMES[14]= "Ava Le'Ray Barrin";
   NAMES[15]= "Ebony Morgan";
   NAMES[16]= "TeeTee Dangerfield";
   NAMES[17]= "Gwynevere River Song";
   NAMES[18]= "Kiwi Herring";
   NAMES[19]= "Kashmire Nazier Redd";
   NAMES[20]= "Derricka Banner";
   NAMES[21]= "Scout Schultz";
   NAMES[22]= "Ally Lee Steinfeld";
   NAMES[23]= "Stephanie Montez";
   NAMES[24]= "Candace Towns";
   NAMES[25]= "Jaylow McGlory";
   NAMES[26]= "Anthony 'Bubbles' Torres";
   NAMES[27]= "Brooklyn BreYanna Stevenson";
  
  //AGES
   AGES[0]= 41.0;
   AGES[1]= 23.0;
   AGES[2]= 28.0;
   AGES[3]= 23.0;
   AGES[4]= 24.0;
   AGES[5]= 31.0;
   AGES[6]= 26.0;
   AGES[7]= 18.0;
   AGES[8]= 38.0;
   AGES[9]= 28.0;
   AGES[10]= 59.0;
   AGES[11]= 46.0;
   AGES[12]= 27.0;
   AGES[13]= 28.0;
   AGES[14]= 17.0;
   AGES[15]= 28.0;
   AGES[16]= 32.0;
   AGES[17]= 26.0;
   AGES[18]= 30.0;
   AGES[19]= 28.0;
   AGES[20]= 26.0;
   AGES[21]= 21.0;
   AGES[22]= 17.0;
   AGES[23]= 47.0;
   AGES[24]= 30.0;
   AGES[25]= 29.0;
   AGES[26]= 44.0;
   AGES[27]= 31.0;
  
      //DATES
       DATES[0]=  "4-Jan";
      DATES[1]=  "6-Jan";
    DATES[2]=  "6-Jan";
    DATES[3]=  "8-Feb";
    DATES[4]=  "21-Feb";
    DATES[5]=  "25-Feb";
    DATES[6]=  "27-Feb";
    DATES[7]=  "19-Feb";
    DATES[8]=  "22-Mar";
    DATES[9]=  "21-Apr";
    DATES[10]=  "4-May";
    DATES[11]=  "16-May";
    DATES[12]=  "9-Apr";
    DATES[13]=  "13-Jun";
    DATES[14]=  "25-Jun";
    DATES[15]=  "2-Jul";
    DATES[16]=  "31-Jul";
    DATES[17]=  "12-Aug";
    DATES[18]=  "22-Aug";
    DATES[19]=  "5-Sep";
    DATES[20]=  "12-Sep";
    DATES[21]=  "16-Sep";
    DATES[22]=  "14-Sep";
    DATES[23]=  "28-Sep";
    DATES[24]=  "31-Oct";
      DATES[25]=  "4-Aug";
        DATES[26]=  "10-Sep";
        DATES[27]= "27-Nov";
  
    for(int i=0; i<28; i++){
    MOVELOC[i]= random(1,9);
    } 
          //XLOC
        XLOC[0]=   map(  447.0, 0,700,0,1200);
      XLOC[1]=   map(  558.0, 0,700,0,1200);
    XLOC[2]=   map(  356.0, 0,700,0,1200);
    XLOC[3]=   map(  520.0, 0,700,0,1200);
    XLOC[4]=   map(  468.0, 0,700,0,1200);
    XLOC[5]=   map(  430.0, 0,700,0,1200);
    XLOC[6]=   map(  461.0, 0,700,0,1200);
    XLOC[7]=   map(  416.0, 0,700,0,1200);
    XLOC[8]=   map(  611.0, 0,700,0,1200);
    XLOC[9]=   map(  603.0, 0,700,0,1200);
    XLOC[10]=   map(  640.0, 0,700,0,1200);
    XLOC[11]=   map(  574.0, 0,700,0,1200);
    XLOC[12]=   map(  333.0, 0,700,0,1200);
    XLOC[13]=   map(  590.0, 0,700,0,1200);
    XLOC[14]=   map(  540.0, 0,700,0,1200);
    XLOC[15]=   map(  586.0, 0,700,0,1200);
    XLOC[16]=   map(  523.0, 0,700,0,1200);
    XLOC[17]=   map(  355.0, 0,700,0,1200);
    XLOC[18]=   map(  439.0, 0,700,0,1200);
    XLOC[19]=   map(  635.0, 0,700,0,1200);
    XLOC[20]=   map(  584.0, 0,700,0,1200);
    XLOC[21]=   map(  510.0, 0,700,0,1200);
    XLOC[22]=   map(  385.0, 0,700,0,1200);
    XLOC[23]=   map(  344.0, 0,700,0,1200);
    XLOC[24]=   map(  563.0, 0,700,0,1200);
      XLOC[25]=   map(  407.0, 0,700,0,1200);
        XLOC[26]=   map(  70.0, 0,700,0,1200);
        XLOC[27]= map( 341.0,0,700,0,1200);
    
        //YLOC
        YLOC[0]=   map(  357.0, 0,500,0,700);
      YLOC[1]=   map(  196.0, 0,500,0,700);
    YLOC[2]=   map(  173.0, 0,500,0,700);
    YLOC[3]=   map(  188.0, 0,500,0,700);
    YLOC[4]=   map(  197.0, 0,500,0,700);
    YLOC[5]=   map(  410.0, 0,500,0,700);
    YLOC[6]=   map(  397.0, 0,500,0,700);
    YLOC[7]=   map(  340.0, 0,500,0,700);
    YLOC[8]=   map(  220.0, 0,500,0,700);
    YLOC[9]=   map(  452.0, 0,500,0,700);
    YLOC[10]=   map(  188.0, 0,500,0,700);
    YLOC[11]=   map(  296.0, 0,500,0,700);
    YLOC[12]=   map(  409.0, 0,500,0,700);
    YLOC[13]=   map(  167.0, 0,500,0,700);
    YLOC[14]=   map(  315.0, 0,500,0,700);
    YLOC[15]=   map(  255.0, 0,500,0,700);
    YLOC[16]=   map(  335.0, 0,500,0,700);
    YLOC[17]=   map(  354.0, 0,500,0,700);
    YLOC[18]=   map(  254.0, 0,500,0,700);
    YLOC[19]=   map(  154.0, 0,500,0,700);
    YLOC[20]=   map(  305.0, 0,500,0,700);
    YLOC[21]=   map(  345.0, 0,500,0,700);
    YLOC[22]=   map(  247.0, 0,500,0,700);
    YLOC[23]=   map(  429.0, 0,500,0,700);
    YLOC[24]=   map(  348.0, 0,500,0,700);
      YLOC[25]=   map(  375.0, 0,500,0,700);
        YLOC[26]=   map(  227.0, 0,500,0,700);
        YLOC[27]= map( 311.0,0,500,0,700);
  

          //PICTITLE
        PICTITLE[0]=   "caldwell.png";
      PICTITLE[1]=   "hake.png";
    PICTITLE[2]=   "arrow.png";
    PICTITLE[3]=   "striker.png";
    PICTITLE[4]=   "richmond.png";
    PICTITLE[5]=   "chyna.png";
    PICTITLE[6]=   "mcelveen.png";
    PICTITLE[7]=   "holland.png";
    PICTITLE[8]=   "watson.png";
    PICTITLE[9]=   "reed.png";
    PICTITLE[10]=   "bostick.png";
    PICTITLE[11]=   "faulkner.png";
    PICTITLE[12]=   "mcfadden.png";
    PICTITLE[13]=   "adams.png";
    PICTITLE[14]=   "barrin.png";
    PICTITLE[15]=   "morgan.png";
    PICTITLE[16]=   "dangerfield.png";
    PICTITLE[17]=   "song.png";
    PICTITLE[18]=   "herring.png";
    PICTITLE[19]=   "redd.png";
    PICTITLE[20]=   "banner.png";
    PICTITLE[21]=   "schultz.png";
    PICTITLE[22]=   "steinfeld.png";
    PICTITLE[23]=   "montez.png";
    PICTITLE[24]=   "towns.png";
      PICTITLE[25]=   "mcglory.png";
        PICTITLE[26]=   "torres.png";
        PICTITLE[27]= "stevenson.png";

          //POCARRAY
        POCARRAY[0]=     1.0;
      POCARRAY[1]=     0.0;
    POCARRAY[2]=     1.0;
    POCARRAY[3]=     1.0;
    POCARRAY[4]=     1.0;
    POCARRAY[5]=     1.0;
    POCARRAY[6]=     1.0;
    POCARRAY[7]=     1.0;
    POCARRAY[8]=     1.0;
    POCARRAY[9]=     1.0;
    POCARRAY[10]=     1.0;
    POCARRAY[11]=     1.0;
    POCARRAY[12]=     1.0;
    POCARRAY[13]=     1.0;
    POCARRAY[14]=     1.0;
    POCARRAY[15]=     1.0;
    POCARRAY[16]=     1.0;
    POCARRAY[17]=     0.0;
    POCARRAY[18]=     1.0;
    POCARRAY[19]=     1.0;
    POCARRAY[20]=     1.0;
    POCARRAY[21]=     0.0;
    POCARRAY[22]=     0.0;
    POCARRAY[23]=     1.0;
    POCARRAY[24]=     1.0;
      POCARRAY[25]=     1.0;
        POCARRAY[26]=     0.0;
        POCARRAY[27]= 1.0;
  
      for(int i=0; i<28; i++){
      flowerArray[i]= new flowers(0,0,0,0,0,0,0,30,0,MOVELOC[i],XLOC[i],YLOC[i],0,0.5,0,1, NAMES[i]);
      }
      for(int i=0; i<28; i++){
      indiArray[i]= new individs(PICTITLE[i], AGES[i], NAMES[i], DATES[i], 0, 30,0,MOVELOC[i], 0.15, 0);
      }
}

void draw(){
  if(sceneSwap<100){
    sceneSwap=sceneSwap+1;
    }//making a count to control the ability for the click to have an effect  
     if(sceneSwap==70){//aka setting a delay for the mehanical double bounce
      sceneSwap=255;
    }//just controls for the count mechanism   
    
 if(sceneControl==5){
      beginner.backgrouND();
      beginner.textIntro();
      //if(javascript!=null){
      //       javascript.stopplayer();  
      //    }
  }//END SCENE CONTROL 5
 
 if(sceneControl==0){   
      for(int i=0; i<28; i++){
        if((mouseX<XLOC[i]+20)&&(mouseX>XLOC[i]-20)&&(mouseY<YLOC[i]+20)&&(mouseY>YLOC[i]-20)){
             flowSelect=i;
           }//so now whenever your mouse is over the flower that's the selected one
        pocarrayivalue=POCARRAY[i];
      flowerArray[i].colFlow(flowSelect, pocarrayivalue, i);  //select value sent in for the change of color etc
      flowerArray[i].flowerNames(flowSelect, i);
      flowerArray[i].make();
      //AUDIOARRAY[i].amp(0);//amplitude at 0 during this screen, amp of selected at 1 on other screen
      }//end of i variable
  }//END OF SCENE CONTROL 0
if(sceneControl==1){
       indiArray[flowSelChange].backgroundset();
       indiArray[flowSelChange].agestripes();
       indiArray[flowSelChange].frame();
       indiArray[flowSelChange].nameplate();
       indiArray[flowSelChange].makeBig(0);
       indiArray[flowSelChange].makeBig(width);
    }

}//end of draw loop


void mouseClicked(){
   if(sceneControl==5){
          sceneSwap=0;
          sceneControl=0;
          background(0);
          flowerArray[1].mapImage();
          }
        
    if((sceneControl==0)&&(sceneSwap==255)){
      flowSelChange=flowSelect;
          sceneSwap=0;
          sceneControl=1;
          background(0);
            if(javascript!=null){ 
               if(flowSelChange==0){
              javascript.playplayer0();
                }
                if(flowSelChange==1){
              javascript.playplayer1();
                }
                if(flowSelChange==2){
              javascript.playplayer2();
                }
                if(flowSelChange==3){
              javascript.playplayer3();
                }
                if(flowSelChange==4){
              javascript.playplayer4();
                }
                if(flowSelChange==5){
              javascript.playplayer5();
                }
                if(flowSelChange==6){
              javascript.playplayer6();
                }
                if(flowSelChange==7){
              javascript.playplayer7();
                }
                if(flowSelChange==8){
              javascript.playplayer8();
                }
                if(flowSelChange==9){
              javascript.playplayer9();
                }
                if(flowSelChange==10){
              javascript.playplayer10();
                }
                if(flowSelChange==11){
              javascript.playplayer11();
                }
                if(flowSelChange==12){
              javascript.playplayer12();
                }
                if(flowSelChange==13){
              javascript.playplayer13();
                }
                if(flowSelChange==14){
              javascript.playplayer14();
                }
                if(flowSelChange==15){
              javascript.playplayer15();
                }
                if(flowSelChange==16){
              javascript.playplayer16();
                }
                if(flowSelChange==17){
              javascript.playplayer17();
                }
                if(flowSelChange==18){
              javascript.playplayer18();
                }
                if(flowSelChange==19){
              javascript.playplayer19();
                }
                if(flowSelChange==20){
              javascript.playplayer20();
                }
                if(flowSelChange==21){
              javascript.playplayer21();
                }
                if(flowSelChange==22){
              javascript.playplayer22();
                }
                if(flowSelChange==23){
              javascript.playplayer23();
                }
                if(flowSelChange==24){
              javascript.playplayer24();
                }
                if(flowSelChange==25){
              javascript.playplayer25();
                }
                if(flowSelChange==26){
              javascript.playplayer26();
                }
                if(flowSelChange==27){
              javascript.playplayer27();
                }
                }
        }//end if scene control 0
          
    if((sceneControl==1)&&(sceneSwap==255)){
      if(javascript!=null){ 
              javascript.stopplayer();
            }
          sceneSwap=0;
          sceneControl=0;
          background(0);
          flowerArray[1].mapImage();
          flowSelect=0;
          flowSelChange=0;
          flowerArray[1].setvariables();
          }
}//END OF MOUSE CLICKED

class starter{
  //variables none  
  starter(){
  }  
  void backgrouND(){
    fill(0);
       rect(0,0,width,height); 
   }  
  void textIntro(){
      textFont(font);
      textSize(80);
    textAlign(CENTER,CENTER);
    fill(255, 150);
    text("OBIT+", width/2, height/2-40);
      textFont(font);
    text("click to enter  ", width/2, height/2+20);   
  } 
}//END CLASS STARTER FOR SCENE CONTROL 5!

class flowers{
  //variables
  int rfF, gfF, bfF, rsF, gsF, bsF, pocS;
  float a,b,moveFlow, xFlow,yFlow, boun, moveboun;
  float countboun;
  float countmove;
  String fNameString;
  PImage map;
  flowers(int _rfF, int _gfF, int _bfF, int _rsF, int _gsF, int _bsF, int _pocS, float _a, float _b, float _moveFlow, float _xFlow,
         float _yFlow, float _boun, float _moveboun, float _countboun,
         float _countmove, String _fNameString){
    a=_a;
    b=_b;
    moveFlow=_moveFlow;
    xFlow=_xFlow;
    yFlow=_yFlow;
    boun=_boun;
    moveboun=_moveboun;
    countboun= _countboun;
    countmove=_countmove;
    fNameString= _fNameString;
    pocS= _pocS;
    rfF= _rfF;
    gfF= _gfF;
    bfF= _bfF;
    rsF= _rsF;
    gsF= _gsF;
    bsF=_bsF;
         }  
  void colFlow(int flowSSSelect, float pocccc, int iIncoming){  
    if(pocccc==0){
              pocS=50;
              } else if(pocccc==1){
              pocS=0;
    }//depemding on the table for POC value yes or no
        if(flowSSSelect==iIncoming){
          rsF=gsF=bsF=255;
          rfF=gfF=bfF=255;
        } else {//setting the fills and strokes based on selection
          rfF=gfF=bfF=0;     
          rsF=108+pocS;
          gsF=31;
          bsF=90;
        }  
      strokeWeight(1);
      stroke(rsF,gsF,bsF,50);
      fill(rfF,gfF,bfF, 50);
  }
  void setvariables(){
    a=0;
    b=0;//ensuring that the variables reset on the scene change
  }
  void mapImage(){
    pushMatrix();
    translate(width/2, height/2);
    map=loadImage("map3.png");//name of pic?
    scale(1.3,1);
    tint(255);
    imageMode(CENTER);
    image(map,-30,0);
    //image(map,-160,-120);
    popMatrix();//just putting the map in the background, only used once during the click mechanism
  }
  void make(){
        a=a-moveFlow;
        b=b+moveFlow;//constructing the flower patterns
    if((a<-70)||(a>70)){
       moveFlow=moveFlow*-1;
       }             //looping the flowers     
     countboun=countboun+1;
     if(countboun==20){
       countboun=-5;
       }             //making a count to bounce the flowers slightly over time
     if(countboun==15){
       boun= boun+moveboun;
       }if ((boun==10)||(boun==-1)){
       moveboun=moveboun*-1;
       }              //using the count to loop the bounce    
     pushMatrix();
       translate(xFlow+boun,yFlow-boun);
       ellipseMode(CENTER);
       rotate(a);
       strokeWeight(1);
       ellipse(0,0,a,b);
     popMatrix();     //actually draw the ellipses and flowers
  } 
  void flowerNames(int cccc, int iIncoming){
          if(cccc==iIncoming){
          nCol=255;
      } else {
          nCol=0;
      }
    textAlign(CENTER);
    textFont(font);
        textSize(20);
    fill(nCol, 5);
    text(fNameString,xFlow,yFlow+75);
  }
}//END OF FLOWERS CLASS

class individs{
  //variables
  PImage portrait;
  String nnn;
  float bbb, aaa;//for ages
  int alphaName;
  String nameString, dateString;
  float a,b,moveFlow;
  float easing;
  float x2;
  //constructor
  individs(String _nnn, float _bbb, String _nameString, String _dateString, int _alphaName, float _a, float _b, float _moveFlow, float _easing, float _x2){
    nnn= _nnn;
    bbb=_bbb;
    a=_a;
    b=_b;
    moveFlow=_moveFlow;
    nameString=_nameString;
    dateString=_dateString;
    alphaName= _alphaName;
    easing=_easing;
    x2=_x2;
  }
  void backgroundset(){
    background(0);
  }
  void frame(){
    float d = dist(width/2, height/2, mouseX, mouseY);
    pushMatrix();
    translate(width/2, height/2);
    float targetX=0-d;
    float dx2= targetX-x2;
    x2+=dx2*easing;
    portrait=loadImage(nnn);//name of pic?
    scale(0.65,0.65);
    tint(255,85);
    imageMode(CENTER);
    image(portrait,x2,0);
    tint(255,85);
    image(portrait,-x2,0);
    tint(255,150);
    image(portrait,0,0);
    popMatrix();
    //println(nnn);
  }
  void makeBig(int xLocBF){
        a=a-moveFlow;
        b=b+moveFlow;//constructing the flower patterns much bigger for the invidual selection screen
    if((a<-200)||(a>200)){
       moveFlow=moveFlow*-1;
       }             //looping the flowers      
     pushMatrix();
     translate(xLocBF,height/2);
       rotate(a);
       strokeWeight(1);
       fill(237,208,230,40);
       stroke(255, 50);
         for(float i=0; i<1.5; i=i+0.3){
       ellipse(0,0,i*a,i*0.8*b);
       ellipse(0,0,0.8*i*a,i*b);
         }
     popMatrix();     //actually draw the ellipses and flowers
  }
  void agestripes(){
    aaa= bbb*3;
    strokeWeight(5);
    stroke(24,38,90, 150);
    for(float i=height/2+3; i<=height/2+aaa; i=i+6){
      line(0,i,width,i);
      line(0,height-i,width,height-i);
    }
  }
  void nameplate(){  
    if(alphaName<254){
      alphaName=alphaName+1;
    }
    if(alphaName==254){
      alphaName=255;
    }
    textSize(60);
    textFont(font);
    textAlign(CENTER, CENTER);
    fill(208,131,190, alphaName);
    text(nameString,width/2,60);
    text(dateString,width/2,height-60);
    fill(255, alphaName);
    text(nameString,width/2-2,60);
    text(dateString,width/2-2,height-60);
  } 
}//END OF INDIVIDS CLASS