server {
	listen 80;
	#listen [::]:80;

	root /var/www/intranet/html/;

	index index.html index.htm index.php;

	server_name intranet.wt11.ephec-ti.be www.intranet.wt11.ephec-ti.be;

	location / {
		try_files $uri $uri/ =404;
	}

	location ~ \.php$ {
        	include snippets/fastcgi-php.conf;
        	fastcgi_pass unix:/run/php/php7.0-fpm.sock;
    	}
}
