// Inherit the parent event
event_inherited();

if (window_get_fullscreen())
{
	button_text = "Off";
    window_set_fullscreen(false);
}
else
{
	button_text = "On";
    window_set_fullscreen(true);
	
}
