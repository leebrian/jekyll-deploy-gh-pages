#!/bin/sh
echo 'hello world'
pwd
ls -alrt
echo $blog_pull_token
echo $GITHUB_TOKEN
git clone https://leebrian:$blog_pull_token@github.com/leebrian/prepend-blog.git foo
ls -alrt
git clone https://leebrian:$blog_pull_token@github.com/leebrian/prepend-blog.git
ls -alrt prepend-blog
git clone https://github.com/leebrian/prepend-blog.git
ls -alrt
ls -alrt prepend-blog
ls -alrt foo
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle install
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'
pwd
ls -alrt

