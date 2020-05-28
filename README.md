# ASP.NET Container

- ### Build & Pushed to docker hub
- ### Deployed to Azure App Service

## Commands:

- Build Container
    `docker build . -t [registry]/[container-name]:latest`
- Push to Docker hub
    `docker push [registry]/[container-name]:latest`
- Run 
    `docker run --rm -d  -p 80:80/tcp [registry]/[container-name]:latest`
