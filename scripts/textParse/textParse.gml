/// @desc Take a string representing a long text and parse into blocks with formatting

startStr = argument0;
remainingStr = startStr;
arra = array_create(0);
arrai = 0
// trace("string pos part " + string(arrai) + ": " + string(string_pos("@@",remainingStr)));
if(string_pos("@@",remainingStr) == 0) {
    arra[arrai] = remainingStr;
}
while(string_pos("@@",remainingStr) != 0 && arrai < 1000) {
    segment = string_copy(remainingStr, 1, string_pos("@@",remainingStr)-1);
 //   trace(segment);
    remainingStr = string_copy(remainingStr, string_pos("@@",remainingStr)+2, string_length(remainingStr));
 //   trace(remainingStr);
    arra[arrai] = segment;
    arrai++
}

textBlocks = array_create(array_length_1d(arra))

for(i=0; i<array_length_1d(arra); i++) {
    segment = arra[i];
    hashpos = string_pos("##", segment);
    if(hashpos == 0) {
        words = segment;
        format = global.defaultTextFormat;
    } else {
        words = string_copy(segment, 1, hashpos-1);
        format = string_copy(segment, hashpos+2, string_length(segment));
    }
	textBlock = array_create(2);
	textBlock[0] = format;
	textBlock[1] = words;
    textBlocks[i] = textBlock;
}

return textBlocks;