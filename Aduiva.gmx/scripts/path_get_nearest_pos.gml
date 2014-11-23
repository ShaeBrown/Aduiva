/*
path_get_nearest_pos(path,x,y)
Returns the path position (A value between 0-1) that is nearest to x,y.

path - The path
x,y - Coordinates

Script by Fede-lasse
*/
var i,pos,xx,yy,dist1,dist2,incr;
pos = 0;
xx = path_get_x(argument0,pos);
yy = path_get_y(argument0,pos);
dist1 = point_distance(argument1,argument2,path_get_x(argument0,pos),path_get_y(argument0,pos));
if path_get_length(argument0)>0 {
incr = 1/path_get_length(argument0);
for (i=incr; i<1; i+=incr) {
dist2 = point_distance(argument1,argument2,path_get_x(argument0,i),path_get_y(argument0,i));
if (dist2 < dist1) {
dist1 = dist2
pos = i;
}
}
return (pos);
}
else {
return noone;
}