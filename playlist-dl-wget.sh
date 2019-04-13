echo "$1" | xargs -n1 youtube-dl  -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'

