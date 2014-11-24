// Script: move_snap_isometric(hsnap, vsnap)
// Purpose: snaps the instance to an isometric grid.
// Inputs:
// Â argument0 = the horizontal snapping value, i.e. the width of the grid.
// Â argument1 = the vertical snapping value, i.e. the height of the grid.
// Example:
// Â move_snap_isometric(32, 16);
var m, n;
m = round(y/argument1 - x/argument0);
n = round(y/argument1 + x/argument0);
var xx,yy
xx = (n - m)/2*argument0;
yy = (n + m)/2*argument1;
if position_empty(xx,yy) {
    x=xx;
    y=yy;
}
else {
    instance_destroy();
}
