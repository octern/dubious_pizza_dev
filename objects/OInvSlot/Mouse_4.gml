/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

itemActivate();

if((current_time - clickTime) < doubleClickSpeed) //1 sec == 1000
    {
		invCloseup();
    }
clickTime = current_time; // save click time (maybe there's better time keeping source than current_time)
