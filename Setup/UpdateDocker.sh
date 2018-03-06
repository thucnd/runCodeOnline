
echo "Creating Docker Image"
docker build -t 'virtual_machine' .
echo "Retrieving Installed Docker Images"
docker images
