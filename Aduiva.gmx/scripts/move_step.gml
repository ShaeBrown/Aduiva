{
 //argument0 - x displacement
 //argument1 - y displacement
 //argument2 - wall parent
 var i,move_check;
 for (i = abs(argument0); i > 0; i -= 1)
 {
  if (i < 0) {i = 0;}
  move_check = sign(argument0)*i;
  if !(place_meeting(x+move_check,y,argument2))
  {
   x += move_check;
   break;
  }
  if !(place_meeting(x+move_check,y-i,argument2))
  {
   y -= i/2;
  }
  if !(place_meeting(x+move_check,y+i,argument2))
  {
   y += i/2;
  }  
 }
 for (i = abs(argument1); i > 0; i -= 1)
 {
  if (i < 0) {i = 0;}
  move_check = sign(argument1)*i;
  if !(place_meeting(x,y+move_check,argument2))
  {
   y += move_check;
   break;
  }
  if !(place_meeting(x-i,y+move_check,argument2))
  {
   x -= i/2;
  }
  if !(place_meeting(x+i,y+move_check,argument2))
  {
   x += i/2;
  }
 }
}
