function dkillall
	sudo docker stop -f (docker ps -a -q)
sudo docker rm -f (docker ps -a -q)
end
