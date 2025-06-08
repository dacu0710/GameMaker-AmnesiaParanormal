MoveForce = [0,-8];
Enemys = [
Obj_cusp,Obj_eyesore,Obj_injection,Obj_injection_thorn,
Obj_core,Obj_darkness,Obj_meatWall,Obj_sphere,
Obj_lightLay,Obj_shellFeather,Obj_shellWall_left,Obj_sun]
CollsionEnemys = ds_list_create();

image_blend = make_color_hsv(0,0,global.Bright*(255/100));//밝기

Damage = 6;

ExplosionTime = 0.5;//초 단위
Step = 0;