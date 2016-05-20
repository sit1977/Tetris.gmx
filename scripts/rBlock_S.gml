///Block_S();
 collision=false;
 
 switch(global.rotate){
  case 0:
     with(global.block[0]){
       if place_meeting(x+32,y-32,obj_soild) other.collision = true;
     }
     
     with(global.block[2]){
       if place_meeting(x+32,y+32,obj_soild) other.collision = true;
     }
     
     with(global.block[3]){
        if place_meeting(x,y+64,obj_soild) other.collision = true;
     }
 
     
     if collision == false {
         global.block[0].x =  global.block[1].x;
         global.block[0].y =  global.block[1].y-32;
       
         global.block[2].x =  global.block[1].x+32;
         global.block[2].y =  global.block[1].y; 
          
         global.block[3].x =  global.block[1].x+32;
         global.block[3].y =  global.block[1].y+32;
         global.rotate=1; 
     }
  break;
  case 1:
     with(global.block[0]){
       if place_meeting(x-32,y+32,obj_soild) other.collision = true;
     }
     
     with(global.block[2]){
       if place_meeting(x-32,y-32,obj_soild) other.collision = true;
     }
     
     with(global.block[3]){
        if place_meeting(x,y-64,obj_soild) other.collision = true;
     }
 
     
     if collision == false {
         global.block[0].x =  global.block[1].x-32;
         global.block[0].y =  global.block[1].y;
       
         global.block[2].x =  global.block[1].x;
         global.block[2].y =  global.block[1].y-32; 
          
         global.block[3].x =  global.block[1].x+32;
         global.block[3].y =  global.block[1].y-32;
         global.rotate=0; 
     }
  break;
 
 }
