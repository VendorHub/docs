docker kill vhdocstemp1
docker rm vhdocstemp1
docker build ./src -t vhdocstemp
docker run --name vhdocstemp1 -p 8081:80 -d vhdocstemp