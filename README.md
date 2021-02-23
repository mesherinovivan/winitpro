# winitpro

### Запуск docker registry
```console
sudo docker run  -p 5000:5000 \
      -e REGISTRY_AUTH=htpasswd \
      -e REGISTRY_AUTH_HTPASSWD_REALM=Registry \
      -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/registry.password 
      -e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/data \ 
      -v "$PWD/data:/data" -v "$PWD/auth:/auth"  \
      --restart=always  --name registry registry:2 
```
