docker build -t sabhab1/multi-client:latest -t sabhab1/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t sabhab1/multi-server:latest -t sabhab1/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t sabhab1/multi-worker:latest -t sabhab1/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push sabhab1/multi-client:latest
docker push sabhab1/multi-server:latest
docker push sabhab1/multi-worker:latest

docker push sabhab1/multi-client:$SHA
docker push sabhab1/multi-server:$SHA
docker push sabhab1/multi-worker:$SHA

kubectl apply -f k8s

kubectl set image deployments/server-deployment server=sabhab1/multi-server:$SHA
kubectl set image deployments/client-deployment client=sabhab1/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=sabhab1/multi-worker:$SHA



