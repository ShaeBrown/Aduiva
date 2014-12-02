///path_get_closest_point(x,y,path,obstacle,grid);
//returns closest point, if no collision
var pos,dd,d,num,short,test;
num=path_get_number(argument2);
pos=1;
short=1;
dd=point_distance(argument0,argument1,path_get_point_x(argument2,pos),path_get_point_y(argument2,pos));
for (pos=2; pos<=num; pos++) {
    d=point_distance(argument0,argument1,path_get_point_x(argument2,pos),path_get_point_y(argument2,pos));
    if d<dd {
        dd=d;
        short=pos;
    }
}
if !collision_line(argument0,argument1,path_get_point_x(argument2,short),path_get_point_y(argument2,short),argument3,1,1) {
    return short;
}
else {
test=path_add();
num=short+10
mp_grid_path(argument4,test,argument0,argument1,path_get_point_x(argument2,pos),path_get_point_y(argument2,pos),1);
d=path_get_length(test);
for (pos=short-10;pos<=num;pos++) {
    mp_grid_path(argument4,test,argument0,argument1,path_get_point_x(argument2,pos),path_get_point_y(argument2,pos),1);
    dd=path_get_length(test);
    if (dd<d) {
        d=dd;
        short=pos;
    }
}
path_delete(test);
return short;
}