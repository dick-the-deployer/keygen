# keygen

##Usage
* Run `docker run -d --name dickthedeployer-keygen dickthedeployer/keygen` to generate keys. 
* Run `docker logs ssh-key` to print the public key
* Run `docker run --rm -t --volumes-from dickthedeployer-keygen busybox ls /root/.ssh/` to access keys from another container
