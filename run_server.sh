# ssh -N -L 3000:localhost:80 spexcms

# server {
# 	listen 443 ssl;
# 
# 	ssl_certificate /var/www/peertube/cert.pem;
# 	ssl_certificate_key /var/www/peertube/key.pem;
# 
# 	server_name _;
# 
# 	client_max_body_size 100G;
# 
# 	location / {
# 		proxy_set_header Host $host;
# 		proxy_set_header X-Real-IP $remote_addr;
# 		proxy_pass http://localhost:3000;
# 	}
# 
# 	location /socket.io {
# 		proxy_http_version 1.1;
# 		proxy_set_header Upgrade $http_upgrade;
# 		proxy_set_header Connection "Upgrade";
# 		proxy_set_header Host $host;
# 		proxy_set_header X-Real-IP $remote_addr;
# 		proxy_pass http://localhost:3000;
# 
# 	}
# }

NODE_TLS_REJECT_UNAUTHORIZED=0 node apps/peertube-runner/dist/peertube-runner.js server
