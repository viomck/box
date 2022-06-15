server {
	server_name hashflags.viomck.com;
	listen 80;

	location ~ {
		proxy_pass http://localhost:8082;
		proxy_set_header Host hashflags.viomck.com;
	}
}
