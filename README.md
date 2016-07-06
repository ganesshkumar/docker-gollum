**Usage**

* Building image
docker build -t <image_name> .

* Running the container
docker run —-name gollum -v */path/to/gollum/files*:/wiki -p 4567:4567 -d <image_name>