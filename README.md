hkz-test-image
================

HBase + Kafka + Zookeeper Test Image

### Install Docker

Follow the Docker [installation guide](https://docs.docker.com/installation/) to install Docker. 

### Running Image

Since this image is built using Packer and Packer doesn't yet support docker specific features (i.e. metadata) you will have to manual expose and map container ports to your local host. To run the container as an executable (in the foreground) and expose zookeeper, kafka and hbase ports execute the following command:

```bash
docker run -i \
  -p 2181:2181 \
  -p 9092:9092 \
  -p 60000:60000 \
  -p 60010:60010 \
  -p 60020:60020 \
  -p 60030:60030 \
  -t fitbur/hkz-test supervisord
  
```

To run the container detatched (in the background):

```bash
docker run -d \
  -p 2181:2181 \
  -p 9092:9092 \
  -p 60000:60000 \
  -p 60010:60010 \
  -p 60020:60020 \
  -p 60030:60030 \
  -t fitbur/hkz-test supervisord
  
```
