docker service create   --name my-website --replicas 7 --mount type=volume,source=../compose-01/website,destination=/usr/local/apache2/htdocs httpd:latest
