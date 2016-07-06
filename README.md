**Usage**

* Pull docker image from [dockerhub](https://hub.docker.com/r/ganesshkumar/gollum/) or build it using the following command
```
docker build -t <image_name> .
```

  
* Running the container
```
docker run —-name gollum -v /path/to/gollum/files:/wiki -p 4567:4567 -d <image_name>
```
Note: /path/to/gollum/files must be a git directory. Use absolute path.