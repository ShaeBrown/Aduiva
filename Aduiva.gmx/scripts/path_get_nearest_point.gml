///path_nearest_point(path,x,y,grid);
var total,pos,d,short,dd,test;
test=path_add();
pos=1;
short=1;
mp_grid_path(argument3,test,argument1,argument2,path_get_point_x(argument0,pos),path_get_point_y(argument0,pos),1);
d=path_get_length(test);
total=path_get_number(argument0);
for (pos=2;pos<=total;pos++) {
    mp_grid_path(argument3,test,argument1,argument2,path_get_point_x(argument0,pos),path_get_point_y(argument0,pos),1);
    dd=path_get_length(test);
    if (dd<d) {
        d=dd;
        short=pos;
    }
}
path_delete(test);
return short;