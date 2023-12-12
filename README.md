# sharelatex-docker

[![Docker Image Build Push](https://github.com/henryclw/sharelatex-docker/actions/workflows/docker-image-build-push.yml/badge.svg)](https://github.com/henryclw/sharelatex-docker/actions/workflows/docker-image-build-push.yml)

My own sharelatex docker image

Build from <https://github.com/overleaf/overleaf/blob/main/server-ce/Dockerfile>

# docker compose

```bash
docker compose -f "docker-compose.yml" -p "sharelatex-dev" up -d
docker compose -f "docker-compose-overleaf.yml" -p "sharelatex-dev" up -d
```


```bash
rs.initiate({ _id: "overleaf", members: [ { _id: 0, host: "mongo-sharelatex:27017" } ] })
rs.initiate({ _id: "overleaf", members: [ { _id: 0, host: "localhost:27017" } ] })
rs.add( "mongo-sharelatex:27017" )



:27017


rs.initiate(
   {
      _id: "myReplSet",
      version: 1,
      members: [
         { _id: 0, host : "mongodb0.example.net:27017" },
         { _id: 1, host : "mongodb1.example.net:27017" },
         { _id: 2, host : "mongodb2.example.net:27017" }
      ]
   }
)

```