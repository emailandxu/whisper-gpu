# audio=test.wav
# audio_dir=$PWD
echo $audio
echo $audio_dir
docker run -it --rm -v $audio_dir:/data --gpus='"device=2"' whisper_gpu sh -c "python -u -m whisper /data/$audio 2>&1 | tee /data/${audio%.*}.txt" 

