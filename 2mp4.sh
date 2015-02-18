#for i in $(ls); do
ffmpeg -i "$1" -vcodec copy -acodec copy "$1.mp4"
#; done;


