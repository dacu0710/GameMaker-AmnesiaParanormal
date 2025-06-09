randomize();
timer = 0;
timer_Max = 0;

boss_spawn = 0;
meat_wall_spawn = 0;

p_test = 0;
ch = 3;

random_num_1 = 0;
random_num_2 = 0;

ch1_monster = [Obj_cusp,Obj_eyesore,Obj_injection];
ch2_monster = [Obj_cusp,Obj_injection,Obj_darkness,Obj_meatWall,Obj_sphere];
ch3_monster = [Obj_injection,Obj_darkness,Obj_eyesore,Obj_sphere];
monster_random_num = irandom_range(1,5);

 can_spawn = true;

ch1_spawn_patterns = [
    { monster_index: 2, positions: [32, 224],        timer: 480 }, // pattern 1
    { monster_index: 2, positions: [128],            timer: 480 }, // pattern 2
    { monster_index: 1, positions: [128],            timer: 180 }, // pattern 3
    { monster_index: 0, positions_func: function() { return [96 * irandom_range(0, 2) + 32]; }, timer: 360 }, // pattern 4
    { monster_index: 1, positions_func: function() { return [192 * irandom_range(0, 1) + 32]; }, timer: 300 }  // pattern 5
];
ch2_spawn_patterns = [
    { monster_index: 3, positions: [128],        timer: 120 }, // pattern 1
    { monster_index: 0, positions_func: function() { return [192 * irandom_range(0, 1) + 32]; },timer: 360 }, // pattern 2
    { monster_index: 1, positions: [128],        timer: 480 }, // pattern 3
    { monster_index: 2, positions_func: function() { return [96 * irandom_range(0, 2) + 32]; }, timer: 180 }, // pattern 4
    { monster_index: 4, positions_func: function() { return [192 * irandom_range(0, 1) + 32]; }, timer: 180 }  // pattern 5
];
ch3_spawn_patterns = [
    { monster_index: 0, positions_func: function() { return [192 * irandom_range(0, 1) + 32]; },timer: 480 }, // pattern 1
    { monster_index: 1, positions: [128],timer: 180 }, // pattern 2
    { monster_index: 0, positions: [128],timer: 360 }, // pattern 3
    { monster_index: 2, positions_func: function() { return [96 * irandom_range(0, 2) + 32]; }, timer: 360 }, // pattern 4
    { monster_index: 3, positions_func: function() { return [192 * irandom_range(0, 1) + 32]; }, timer: 180 }  // pattern 5
];

function ch1monsterSpawn(random_number)
{
	randomize();
    var pattern = ch1_spawn_patterns[random_number - 1];
    var spawn_positions;
    if (variable_struct_exists(pattern, "positions_func")) spawn_positions = pattern.positions_func();
    else spawn_positions = pattern.positions;
    for (var i = 0; i < array_length(spawn_positions); i++) instance_create_layer(spawn_positions[i], 64, "Monster", ch1_monster[pattern.monster_index]);
    timer_Max = pattern.timer;
}
function ch2monsterSpawn(random_number)
{
	randomize();
	if(random_number == 1) meat_wall_spawn = 1;
    var pattern = ch2_spawn_patterns[random_number - 1];
    var spawn_positions;
    if (variable_struct_exists(pattern, "positions_func")) spawn_positions = pattern.positions_func();
    else spawn_positions = pattern.positions;
    for (var i = 0; i < array_length(spawn_positions); i++) instance_create_layer(spawn_positions[i], 64, "Monster", ch2_monster[pattern.monster_index]);
    timer_Max = pattern.timer;
}
function ch3monsterSpawn(random_number)
{
	randomize();
    var pattern = ch3_spawn_patterns[random_number - 1];
    var spawn_positions;
    if (variable_struct_exists(pattern, "positions_func")) spawn_positions = pattern.positions_func();
    else spawn_positions = pattern.positions;
    for (var i = 0; i < array_length(spawn_positions); i++) instance_create_layer(spawn_positions[i], 64, "Monster", ch3_monster[pattern.monster_index]);
    timer_Max = pattern.timer;
}
function temp()
{
	randomize();
	monster_random_num = irandom_range(1,5);
	if(meat_wall_spawn == 1 && monster_random_num == 1) {
		monster_random_num = irandom_range(2,5);
		return;
	}
	show_debug_message("monsterSpwan");
	p_test++;
	timer = 0;
	can_spawn = false;
}