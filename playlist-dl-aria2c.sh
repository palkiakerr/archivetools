echo "$1" | xargs -n1 youtube-dl --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'

