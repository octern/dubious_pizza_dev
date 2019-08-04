/// fade in / fade out

fader=instance_create_depth(0,0,1,OFadeOverlay);
fader.persistent = true;
if(argument_count >= 1) fader.fadeDuration = argument[0];
if(argument_count >= 2) fader.fadePause = argument[1];
