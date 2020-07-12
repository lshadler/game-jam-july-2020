/// @description Do super
// You can write your code in this editor

if(global.points % super_modulo == 0 && global.points > 0 && global.points != super_point_val) {
	super_point_val = global.points
	super_type = round(random(100));
	super_timer = 50;
	
	if(super_type < 15) {
		instance_destroy(Tomato);
		super_message = "Destroy all Tomatoes!"
	} else if(super_type >= 15 && super_type < 25) {
		super_message = "Destroy all Drums!"
		instance_destroy(Drum_left);
		instance_destroy(Drum_right);
	} else if(super_type >= 25 && super_type < 30) {
		super_message = "Destroy Everything!"
		instance_destroy(Drum_left);
		instance_destroy(Drum_right);
		instance_destroy(Tomato);
	} else if(super_type >= 30 && super_type < 35) {
		oPlayer.hp = min(100, oPlayer.hp + 50)
		super_message = "Health + 50"
	} else {
		oPlayer.hp = min(100, oPlayer.hp + 20)
		super_message = "Health + 20"
	}
}