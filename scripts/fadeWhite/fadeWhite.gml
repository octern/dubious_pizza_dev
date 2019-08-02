/// fade in / fade out

fader=instance_create_depth(0,0,1,OFadeOverlay);
if(argument_count >= 1) fader.fadeDuration = argument[0];
