#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
echo 'www.shanmufti.com' > CNAME

git add -A
git commit -m 'deploy'
git push -f git@personal.github.com:shanmufti/shanmufti-web.git
cd -