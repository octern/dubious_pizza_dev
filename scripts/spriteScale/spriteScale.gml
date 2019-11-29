/// @desc scale an instance sprite tersely
/// @param inst  instance to scale

if (live_call(argument[0], argument[1])) return live_result;

var inst = argument[0];
var scale = argument[1];

with(inst) {
	image_xscale=scale;
	image_yscale=scale;
}