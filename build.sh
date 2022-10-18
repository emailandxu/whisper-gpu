# proxy=http://172.17.200.65:7890
docker build --build-arg http_proxy=$proxy --build-arg https_proxy=$proxy -t whisper_gpu .