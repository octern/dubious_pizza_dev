/**
 * Find first occurrence of a value in an array and replace. Return the index replaced, or -1 if not found
 * @param {any} searchItem - Item to search for
 * @param {any} rplItem - Item to replace with
 * @param {array} searchArray - Array to search
 */

var _searchItem = argument0;
var _rplItem = argument1;
var _searchArray = argument2;

var _rplIndex = arrayFind(_searchItem, _searchArray);
_searchArray[@ _rplIndex] = _rplItem;
return _rplIndex;