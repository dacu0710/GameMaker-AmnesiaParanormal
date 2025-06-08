hp -= 5;
instance_destroy(other);
if (instance_exists(Obj_shellWall_left)) {
    Obj_shellWall_left.x = -96;
}
if (instance_exists(Obj_shellWall_right)) {
    Obj_shellWall_right.x = 224;
}