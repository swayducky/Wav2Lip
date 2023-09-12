#!/usr/bin/env bash

pad_top=0
pad_bottom=10
pad_left=0
pad_right=0
rescaleFactor=1
in_video="_in/steve2.mp4"
in_audio="_in/steve3.wav"
out_video="_out/steve.mp4"

echo "IN-AUDIO: $in_audio"
echo "IN-VIDEO: $in_video"
echo "OUT-VIDEO: $out_video"

source .venv/bin/activate
set -e
python go.py "$in_video"
python inference.py --checkpoint_path checkpoints/wav2lip_gan.pth --face_det_batch_size 6 --face "$in_video" --audio "$in_audio" --pads $pad_top $pad_bottom $pad_left $pad_right --resize_factor $rescaleFactor --outfile "$out_video"
