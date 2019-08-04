/// @description Insert description here
// You can write your code in this editor
if(changeDir) {
	fadeWait--;
}
if(changeDir && fadeWait<=0) {
	roomChange(changeDir);
}