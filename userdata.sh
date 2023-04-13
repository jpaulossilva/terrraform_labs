#!/bin/bash
sudo cd /home/ubuntu
sudo /bin/echo "<h1> Consegui Porra !!! </h1> " > index.html
sudo nohup busybox httpd -f -p 8080 &
 