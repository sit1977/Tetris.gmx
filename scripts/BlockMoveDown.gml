///BlockMoveDown();
collision=false;

with(obj_block){
  if place_meeting(x,y+32,obj_soild){
     other.collision=true;
  }
}  

if collision == false {
   with(obj_block) y+=32;
}else{
   audio_play_sound(hit1,2,false);
   
   with(obj_block){
    
    if place_meeting(x,32,obj_soild) {
      global.gameOver=true;
      instance_create(room_width/2,room_height/2,obj_game_over);
    }       
    
     instance_change(obj_soild,true); 
       
    
   }
  if global.gameOver==false{ 
   alarm[1]=3;
  }
  
}
