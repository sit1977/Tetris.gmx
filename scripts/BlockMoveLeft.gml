///BlockMoveLeft();
collision=false;
with(obj_block){
    if place_meeting(x-32,y,obj_soild) {
       other.collision=true;
    }   
}

if collision == false {
 with(obj_block) x-=32;
} 
