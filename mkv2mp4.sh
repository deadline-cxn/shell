for i in $(ls *mkv); do ffmpeg -i $i -vcodec copy -acodec copy $i.mp4; done;

