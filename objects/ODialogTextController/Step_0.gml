/// @description Insert description here
// You can write your code in this editor

if(!titlesSet) {
	titlesSet = true;
	for(iTitle = 0;iTitle < instance_number(OTextTitleBG); iTitle++) {
		textArea = instance_find(OTextTitleBG, iTitle);
		if(textArea.textType == "title") { 
			textArea.content = source_title; 
			titleArea = textArea;
		}
		if(textArea.textType == "docs") { 
			textArea.content = textGet("dialogDocs"); 
			docsArea = textArea;
		}
	}
}