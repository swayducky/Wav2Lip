#!/usr/bin/env bash

pad_top=0
pad_bottom=10
pad_left=0
pad_right=0
rescaleFactor=1
in_video="_in/vertical.mp4"
in_audio="_in/vertical.mp3"
out_video="_in/vertical_out.mp4"

echo "IN-AUDIO: $in_audio"
echo "IN-VIDEO: $in_video"
echo "OUT-VIDEO: $out_video"

source .venv/bin/activate
set -e
# python go.py "$in_video"
python inference.py --face "$in_video" --audio "$in_audio" --outfile "$out_video" --checkpoint_path checkpoints/wav2lip_gan.pth
