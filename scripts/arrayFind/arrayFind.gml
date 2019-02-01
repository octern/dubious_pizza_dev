/**
 * Find first occurrence of a value in an array. Return index or -1
 * @param {any} searchItem - Item to search for
 * @param {array} searchArray - Array to search
 */

var searchItem = argument0;
var searchArray = argument1;
var arrayLen=array_length_1d(searchArray)
var arrayIndex=-1;
for(i=0; i<arrayLen; i+=1) {
	if(searchArray[i]==searchItem) {
		arrayIndex=i;
		break;
	}
}
return arrayIndex;