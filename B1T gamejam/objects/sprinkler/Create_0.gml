switch(sprinkler_range){
	case 1:
		sprite_index = fullsprinkleranim;
		break;
	case 2:
		sprite_index = upgradedfullsprinkleranim;
		break;
	case 3:
		sprite_index = ultrafullsprinkleranim;
		break;
	default:
		sprite_index = spr_sprinkler;
}
 //> 0 counterclockwise, < 0 clockwise