### Build ruyisdk OpenWrt use Docker

 1.  Build or Pull Docker image.

```
sudo docker build -t ruyisdk-openwrt-builder .
```

If you have already built and pushed to Dockerhub:

```
sudo docker pull <your_dockerhub_username>/ruyisdk-openwrt-builder:latest
```

2.  Push to DockerHub (Optional).

```
docker tag ruyisdk-openwrt-builder:latest <your_dockerhub_username>/ruyisdk-openwrt-builder:latest
docker push <your_dockerhub_username>/ruyisdk-openwrt-builder:latest

# Note: Before trying to push the docker image to the remote repository please ensure that you have signed into docker from your node, if not please type the followig command to sign in

docker login

# Please enter your username and password when prompted
```

3.  Build Openwrt use Docker

```
sudo docker run --rm -v "$(cd .. && pwd)":/workspace ruyisdk-openwrt-builder
```
