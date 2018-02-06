/* @pjs preload="map3.png, caldwell.png, hake.png, arrow.png, striker.png, richmond.png, chyna.png, mcelveen.png, holland.png, watson.png, reed.png, bostick.png, faulkner.png, mcfadden.png, adams.png, barrin.png, morgan.png, dangerfield.png, song.png, herring.png, redd.png, banner.png, schultz.png, steinfeld.png, montez.png, towns.png, mcglory.png, torres.png, map3.wav, caldwell.wav, hake.wav, woundedarrow.wav, striker.wav, richmond.wav, gibson.wav, mcelveen.wav, holland.wav, watson.wav, reed.wav, bostick.wav, faulkner.wav, mcfadden.wav, adams.wav, barrin.wav, morgan.wav, dangerfield.wav, song.wav, herring.wav, redd.wav, banner.wav, schultz.wav, steinfeld.wav, montez.wav, towns.wav, mcglory.wav, torres.wav";*/


int flowSelect, flowSelChange, sceneControl, sceneSwap, nCol;
//PFont font, font2, font3;
float pocarrayivalue;
//individs[] indiArray= new individs[28];
//flowers[] flowerArray= new flowers[28];
starter beginner;
String[] NAMES= new String[28];
Float[] AGES= new Float[28];
String[] DATES= new String[28];
Float[] XLOC= new Float[28];    //X and Y locations of flowers determined by actual locations
Float[] YLOC= new Float[28];
Float[] MOVELOC= new Float[28];
String[] PICTITLE= new String[28];
String[] AUDTITLE= new String[28];
Float[] POCARRAY= new Float[28];

void setup(){
   size(1000,700);
     //background(211,160,199);
   background(0);
   flowSelect=0;
   flowSelChange=0;
   sceneControl=5;
   sceneSwap=0;
   
   //filling the arrays
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
    
  for(int i=0; i<27; i++){
    MOVELOC[i]= random(1,9);
    } 
    
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

    //XLOC
    XLOC[0]=   map(  247.0, 0,500,0,1000);
  XLOC[1]=   map(  358.0, 0,500,0,1000);
XLOC[2]=   map(  156.0, 0,500,0,1000);
XLOC[3]=   map(  320.0, 0,500,0,1000);
XLOC[4]=   map(  268.0, 0,500,0,1000);
XLOC[5]=   map(  230.0, 0,500,0,1000);
XLOC[6]=   map(  261.0, 0,500,0,1000);
XLOC[7]=   map(  216.0, 0,500,0,1000);
XLOC[8]=   map(  411.0, 0,500,0,1000);
XLOC[9]=   map(  403.0, 0,500,0,1000);
XLOC[10]=   map(  440.0, 0,500,0,1000);
XLOC[11]=   map(  374.0, 0,500,0,1000);
XLOC[12]=   map(  133.0, 0,500,0,1000);
XLOC[13]=   map(  390.0, 0,500,0,1000);
XLOC[14]=   map(  340.0, 0,500,0,1000);
XLOC[15]=   map(  386.0, 0,500,0,1000);
XLOC[16]=   map(  323.0, 0,500,0,1000);
XLOC[17]=   map(  155.0, 0,500,0,1000);
XLOC[18]=   map(  239.0, 0,500,0,1000);
XLOC[19]=   map(  435.0, 0,500,0,1000);
XLOC[20]=   map(  384.0, 0,500,0,1000);
XLOC[21]=   map(  310.0, 0,500,0,1000);
XLOC[22]=   map(  185.0, 0,500,0,1000);
XLOC[23]=   map(  144.0, 0,500,0,1000);
XLOC[24]=   map(  363.0, 0,500,0,1000);
  XLOC[25]=   map(  207.0, 0,500,0,1000);
    XLOC[26]=   map(  70.0, 0,500,0,1000);

    //YLOC
    YLOC[0]=   map(  357.0, 130,500,0,700);
  YLOC[1]=   map(  196.0, 130,500,0,700);
YLOC[2]=   map(  173.0, 130,500,0,700);
YLOC[3]=   map(  188.0, 130,500,0,700);
YLOC[4]=   map(  197.0, 130,500,0,700);
YLOC[5]=   map(  410.0, 130,500,0,700);
YLOC[6]=   map(  397.0, 130,500,0,700);
YLOC[7]=   map(  340.0, 130,500,0,700);
YLOC[8]=   map(  220.0, 130,500,0,700);
YLOC[9]=   map(  452.0, 130,500,0,700);
YLOC[10]=   map(  188.0, 130,500,0,700);
YLOC[11]=   map(  296.0, 130,500,0,700);
YLOC[12]=   map(  409.0, 130,500,0,700);
YLOC[13]=   map(  167.0, 130,500,0,700);
YLOC[14]=   map(  315.0, 130,500,0,700);
YLOC[15]=   map(  255.0, 130,500,0,700);
YLOC[16]=   map(  335.0, 130,500,0,700);
YLOC[17]=   map(  354.0, 130,500,0,700);
YLOC[18]=   map(  254.0, 130,500,0,700);
YLOC[19]=   map(  154.0, 130,500,0,700);
YLOC[20]=   map(  305.0, 130,500,0,700);
YLOC[21]=   map(  345.0, 130,500,0,700);
YLOC[22]=   map(  247.0, 130,500,0,700);
YLOC[23]=   map(  429.0, 130,500,0,700);
YLOC[24]=   map(  348.0, 130,500,0,700);
  YLOC[25]=   map(  375.0, 130,500,0,700);
    YLOC[26]=   map(  227.0, 130,500,0,700);
    

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

    //for(int i=0; i<27; i++){
    //  flowerArray[i]= new flowers(0,0,0,0,0,0,0,30,0,MOVELOC[i],XLOC[i],YLOC[i],0,0.5,0,1, NAMES[i]);
    //  }
    //for(int i=0; i<27; i++){
    //  indiArray[i]= new individs(PICTITLE[i], AGES[i], NAMES[i], DATES[i], 0, 30,0,MOVELOC[i], 0.15, 0);
    //  }
   
    //font= createFont("Cochin-BoldItalic",60);
    //font2= createFont("Cochin-Italic",25);
    //font3= createFont("Cochin-Italic",27);
    beginner= new starter();
}

void draw(){
  if(sceneControl==5){
      beginner.backgrouND();
      beginner.textIntro();
  }//END SCENE CONTROL 5
}

class starter{
  //variables none  
  starter(){
  }  
  void backgrouND(){
    fill(0);
       rect(0,0,width,height); 
   }  
  void textIntro(){
      //textFont(font);
      textSize(80);
    textAlign(CENTER,CENTER);
    fill(255, 150);
    text("OBIT+", width/2, height/2-40);
      //textFont(font3);
    text("click to enter  ", width/2, height/2+20);   
  } 
}