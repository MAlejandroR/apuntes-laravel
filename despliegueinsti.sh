git add *
git commit $1
git push origin main
hugo -d public

rsync -avz --delete -e "ssh -p 22022" ./public/ manuel@infenlaces.com:/web/manuel.infenlaces.com/public_html/laravel


