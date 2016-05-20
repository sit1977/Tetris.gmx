///CreateBlockSharp_show(x,y,shape);
/*
var xx=320;
var yy=32;
*/

var xx=argument0;
var yy=argument1;


switch(argument2) {
 case I:
      global._blockColor=c_aqua; //สีฟ้า
      global._block[0]=instance_create(xx,yy,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[2]=instance_create(xx+64,yy,obj_block_tmp);
      global._block[3]=instance_create(xx+96,yy,obj_block_tmp);         
 break;
 case J:
      global._blockColor=c_blue;
      global._block[0]=instance_create(xx,yy,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[2]=instance_create(xx+64,yy,obj_block_tmp);
      global._block[3]=instance_create(xx+64,yy+32,obj_block_tmp);        
 break;
 case L:
      /* 
        2 1 0
        3
      */
      global._blockColor=c_orange;
      global._block[0]=instance_create(xx+64,yy,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[2]=instance_create(xx,yy,obj_block_tmp);
      global._block[3]=instance_create(xx,yy+32,obj_block_tmp);        
 break;      
 case O:
      xx+=32;
      global._blockColor=c_yellow;
      global._block[0]=instance_create(xx,yy,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[2]=instance_create(xx,yy+32,obj_block_tmp);
      global._block[3]=instance_create(xx+32,yy+32,obj_block_tmp);              
 break;
 case S:
      /*
            2  3
        0   1
      */
      
      global._blockColor=c_green;
      global._block[0]=instance_create(xx,yy+32,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy+32,obj_block_tmp);
      global._block[2]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[3]=instance_create(xx+64,yy,obj_block_tmp);              
 break;
 case T:
      //xx+=32;
      /*
           0 1 2
             3
      */
      global._blockColor=c_fuchsia;
      global._block[0]=instance_create(xx,yy,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[2]=instance_create(xx+64,yy,obj_block_tmp);
      global._block[3]=instance_create(xx+32,yy+32,obj_block_tmp);              
 break;
 case Z:
      /*
         3  2
            1  0
      */
      global._blockColor=c_red;
      global._block[3]=instance_create(xx,yy,obj_block_tmp);
      global._block[2]=instance_create(xx+32,yy,obj_block_tmp);
      global._block[1]=instance_create(xx+32,yy+32,obj_block_tmp);
      global._block[0]=instance_create(xx+64,yy+32,obj_block_tmp);       
 break;
}
