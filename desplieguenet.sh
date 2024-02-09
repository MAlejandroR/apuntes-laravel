git add *
git commit $1
git push origin main
hugo -d public

rsync -avz --delete -e ssh ./public/ root@proyectosdwa.es:/var/www/vhosts/proyectosdwa.es/httpdocs/laravel


