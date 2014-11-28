var pshort, plong, plength, pposition, x1, y1, x2, y2;
pposition=0;
plength=path_get_length(argument0);
pshort=-1;
plong=0;
do{
x1=path_get_x(argument0,pposition/plength);
y1=path_get_y(argument0,pposition/plength);
plong=point_distance(x1,y1,argument1,argument2);
if plong<pshort or pshort=-1 then{pshort=plong; x2=x1; y2=y1;}
pposition+=1;
if pposition>plength then{pposition=plength}
}until(pposition=plength)
return(x2)
