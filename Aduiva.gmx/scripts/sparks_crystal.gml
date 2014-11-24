spotX = argument0;
spotY = argument1;

flow = part_system_create();
spark = part_type_create();

part_type_shape(spark,pt_shape_pixel)
part_type_size(spark,0.10,0.10,0.1,0)
part_type_color3(spark,c_white,c_fuchsia, c_black)
part_type_alpha2(spark,1,0.4)
part_type_speed(spark,2,3,0,0)
part_type_direction(spark,00,359,0,0)
part_type_gravity(spark,0.0,270)
part_type_orientation(spark,90,90,0,0,1)
part_type_life(spark,10,15)

wound = part_emitter_create(flow);
part_system_depth(flow, -125);

part_emitter_region(flow,wound,spotX+16,spotX+16,spotY+16,spotY+16,ps_shape_line ,ps_distr_gaussian);
effect_create_above(ef_spark, spotX+16, spotY+16, 1,c_fuchsia); // the initial clash effect
part_emitter_burst(flow,wound,spark,10) // a burst of spark particles extend out from the clash effect
