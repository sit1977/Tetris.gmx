///CreateBlockSharp(x,y);
/*
var xx=320;
var yy=32;
*/

var xx=argument0;
var yy=argument1;


switch(global.shape) {
 case I:
      global.blockColor=c_aqua; //สีฟ้า
      global.block[0]=instance_create(xx,yy,obj_block);
      global.block[1]=instance_create(xx+32,yy,obj_block);
      global.block[2]=instance_create(xx+64,yy,obj_block);
      global.block[3]=instance_create(xx+96,yy,obj_block);         
 break;
 case J:
      global.blockColor=c_blue;
      global.block[0]=instance_create(xx,yy,obj_block);
      global.block[1]=instance_create(xx+32,yy,obj_block);
      global.block[2]=instance_create(xx+64,yy,obj_block);
      global.block[3]=instance_create(xx+64,yy+32,obj_block);        
 break;
 case L:
      /* 
        2 1 0
        3
      */
      global.blockColor=c_orange;
      global.block[0]=instance_create(xx+64,yy,obj_block);
      global.block[1]=instance_create(xx+32,yy,obj_block);
      global.block[2]=instance_create(xx,yy,obj_block);
      global.block[3]=instance_create(xx,yy+32,obj_block);        
 break;      
 case O:
      xx+=32;
      global.blockColor=c_yellow;
      global.block[0]=instance_create(xx,yy,obj_block);
      global.block[1]=instance_create(xx+32,yy,obj_block);
      global.block[2]=instance_create(xx,yy+32,obj_block);
      global.block[3]=instance_create(xx+32,yy+32,obj_block);              
 break;
 case S:
      /*
            2  3
        0   1
      */
      
      global.blockColor=c_green;
      global.block[0]=instance_create(xx,yy+32,obj_block);
      global.block[1]=instance_create(xx+32,yy+32,obj_block);
      global.block[2]=instance_create(xx+32,yy,obj_block);
      global.block[3]=instance_create(xx+64,yy,obj_block);              
 break;
 case T:
      //xx+=32;
      /*
           0 1 2
             3
      */
      global.blockColor=c_fuchsia;
      global.block[0]=instance_create(xx,yy,obj_block);
      global.block[1]=instance_create(xx+32,yy,obj_block);
      global.block[2]=instance_create(xx+64,yy,obj_block);
      global.block[3]=instance_create(xx+32,yy+32,obj_block);              
 break;
 case Z:
      /*
         3  2
            1  0
      */
      global.blockColor=c_red;
      global.block[3]=instance_create(xx,yy,obj_block);
      global.block[2]=instance_create(xx+32,yy,obj_block);
      global.block[1]=instance_create(xx+32,yy+32,obj_block);
      global.block[0]=instance_create(xx+64,yy+32,obj_block);       
 break;
}
