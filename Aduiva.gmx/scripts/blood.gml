spotX = argument0;
spotY = argument1;

flow = part_system_create();
droplet = part_type_create();
spatter = part_type_create();
b_color = c_red;

part_type_shape(droplet,pt_shape_pixel)
part_type_size(droplet,0.10,0.10,0.05,0)
part_type_color1(droplet,b_color)
part_type_alpha2(droplet,1,0)
part_type_speed(droplet,1.2,1.2,0,0)
part_type_direction(droplet,70,110,0,0) // blood spurts in an arc upward and then down
part_type_gravity(droplet,0.10,270)
part_type_orientation(droplet,90,90,0,0,1)
part_type_life(droplet,35,35)
part_type_death(droplet, 1, spatter) // once the droplets reach the floor, they turn into spatter marks

part_type_shape(spatter,pt_shape_disk)
part_type_size(spatter,0.2,0.3,0,0)
part_type_scale(spatter,.5,.15)
part_type_color1(spatter,b_color)
part_type_alpha2(spatter,1,0) // blood spatter fades slowly to nothing
part_type_speed(spatter,0,0,0,0)
part_type_direction(spatter,0,0,0,0)
part_type_gravity(spatter,0,270)
part_type_life(spatter,50,60)

wound = part_emitter_create(flow);
part_system_depth(flow, -25);

part_emitter_region(flow,wound,spotX+10,spotX+22,spotY+10,spotY+22,ps_shape_line ,ps_distr_gaussian);
part_emitter_stream(flow,wound,droplet,1);
