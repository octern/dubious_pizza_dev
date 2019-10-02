/// @description Insert description here
// You can write your code in this editor

if(createdCooldown >= 0) {createdCooldown -= 1;}

if(!titlesSet) {
	titlesSet = true;
	for(iTitle = 0;iTitle < instance_number(OTextTitleBG); iTitle++) {
		_current_titleArea = instance_find(OTextTitleBG, iTitle);
		if(_current_titleArea.textType == "title") { 
			_current_titleArea.content = source_title; 
			titleArea = _current_titleArea;
		}
		if(_current_titleArea.textType == "docs") { 
			_current_titleArea.content = textGet("dialogDocs"); 
			docsArea = _current_titleArea;
		}
	}
}