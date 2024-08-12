#!/usr/bin/env bash

pad_top=0
pad_bottom=10
pad_left=0
pad_right=0
rescaleFactor=1
in_video="_in/grandpa.mp4"
in_audio="_in/grandpa.wav"
out_video="_in/grandpa_out.mp4"

echo "IN-AUDIO: $in_audio"
echo "IN-VIDEO: $in_video"
echo "OUT-VIDEO: $out_video"

source .venv/bin/activate
set -e
# python go.py "$in_video"

# higher quality, less accurate
# model=checkpoints/wav2lip_gan.pth

# more accurate, less quality
model=checkpoints/wav2lip.pth

python inference.py --face "$in_video" --audio "$in_audio" --outfile "$out_video" --checkpoint_path $model
