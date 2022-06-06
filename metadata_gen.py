import ffmpeg
import sys
from pprint import pprint 


media_file = sys.argv[1]

original_stdout = sys.stdout
with open('metadata.exif', 'w') as f:
    sys.stdout = f
    metadata = ffmpeg.probe(media_file)["streams"]
    add_info = [{"creators": {"address": "2pQPtnFm2mgXZrVWyNdcf5Qf2TWBGkTAeKZJhPjsc7Jn", "share": 100}}]
    pprint(metadata + add_info )
    sys.stdout = original_stdout