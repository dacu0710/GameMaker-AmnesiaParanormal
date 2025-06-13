var _Speed = 1;

layer_y("Tiles_Object",layer_get_y("Tiles_Object")-_Speed);
if(layer_get_y("Tiles_Object") <= -1792+448)
{
	layer_y("Tiles_Object",0);
}

layer_y("Tiles_Granud",layer_get_y("Tiles_Granud")-_Speed);
if(layer_get_y("Tiles_Granud") <= -1792+448)
{
	layer_y("Tiles_Granud",0);
}