// Draw the sprite with visual-only flip/tilt; mask stays unchanged
draw_sprite_ext(sprite_index, image_index, x, y, vis_xscale * image_xsizeratio, 1 * image_ysizeratio, vis_angle + (vis_xscale == 1 ? 20 : -20), image_blend, image_alpha);
