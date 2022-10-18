audio=wgk.mp3
txt=${audio%.*}.txt
docker run -it --rm -v ~/downloads:/data --gpus='"device=2"' whisper_gpu sh -c "python -u -m whisper /data/$audio 2>&1 | tee /data/$txt" 

