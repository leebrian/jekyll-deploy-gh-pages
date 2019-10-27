#!/bin/sh
echo 'hello world'
pwd
ls -alrt
git clone https://leebrian:{{blog.pull.token}}@github.com/leebrian/prepend-blog.git .
ls -alrt
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle install
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'
pwd
ls -alrt

