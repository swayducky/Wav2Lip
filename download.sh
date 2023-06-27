#!/usr/bin/env bash

wget 'https://iiitaphyd-my.sharepoint.com/personal/radrabha_m_research_iiit_ac_in/_layouts/15/download.aspx?share=EdjI7bZlgApMqsVoEUUXpLsBxqXbn5z8VTmoxp55YNDcIA' -O './checkpoints/wav2lip_gan.pth'
wget "https://www.adrianbulat.com/downloads/python-fan/s3fd-619a316812.pth" -O "./face_detection/detection/sfd/s3fd.pth"