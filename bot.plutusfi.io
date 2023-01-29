server {
       listen 80;
       listen [::]:80;

       server_name bot.plutusfi.io www.bot.plutusfi.io;

       root /var/www/html/frotend;
       index index.html;

       location / {
               try_files $uri $uri/ =404;
       }
}