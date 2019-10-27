#!/bin/sh
echo 'hello world'
pwd
ls -alrt
gem install bundler:2.0.2
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle install
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build
echo '👍 THE SITE IS BUILT—GREAT SUCCESS'
pwd
ls -alrt

