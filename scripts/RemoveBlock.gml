///RemoveBlock();

horizontal_x=224;
horizontal_x_max=512;
vertical_y=0;
vertical_y_max=544;

row = 18; //0-17
col = 10; //0-9

count=0;

for(var r=1;r<row;r++){
    countCol=0; 
    ds_list_clear(global.LineBlock);
    
    for(var i=0;i<col;i++){
       _inst = instance_place(horizontal_x+(i*32),vertical_y+(r*32),obj_soild);   
      if _inst != noone {
        countCol++;
        ds_list_add(global.LineBlock,_inst);
      }     
    }    
    
   if countCol==10 {
      count++;
      global.lines++;
     
      global.GameSpd=max(0.1,global.GameSpd-1)
      for(var a=0;a < ds_list_size(global.LineBlock); a++){
        var inst = ds_list_find_value(global.LineBlock,a);
        with(inst){
          //instance_destroy();  
          image_blend=c_gray;  
          if !alarm[0] alarm[0]=other.count+5;
        }
      }
      
     myv = vertical_y+(r*32); 
     var ir = instance_create(x,y,obj_remove_block);
     ir.myv=myv;
     with(ir) alarm[0]=other.count+10;

   }
     
}



