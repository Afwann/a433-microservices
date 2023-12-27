docker build -t waanwann/karsajobs:latest .
docker images
cd .. && cd .. 
cat password.txt | docker login --username waanwann --password-stdin
docker push waanwann/karsajobs:latest