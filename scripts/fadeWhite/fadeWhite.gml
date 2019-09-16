/// fade in / fade out
// If an argument is unspecified or -1 then use the default supplied in the fader object
// final argument says whether it's  a cinematic that should block other clicks and navs. default is true.

fader=instance_create_depth(0,0,1,OFadeOverlay);
fader.persistent = true;
if(argument_count >= 1 & argument[0] >= 0) fader.fadeDuration = argument[0];
if(argument_count >= 2 & argument[1] >= 0) fader.fadePause = argument[1];
if(argument_count >= 3 & argument[2] != 0) fader.fadeColor = argument[2];
if(argument_count > 4) {global.cinematic = argument[3];} else {global.cinematic=true;}

