var _videoData = video_draw();
var _videoStatus = _videoData[0];

if (_videoStatus == 0)
{
	draw_surface(_videoData[1], 50,50);
}

var _currentVideoStatus = video_get_status();
if (_currentVideoStatus == video_status_closed)
{
	room_goto(Room2);
}