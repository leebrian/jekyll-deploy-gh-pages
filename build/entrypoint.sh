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
ls -alrt _site
cd _site
ls -alrt

echo "Establishing SFTP connection..."
sshpass -p $FTP_PASSWORD sftp -o StrictHostKeyChecking=no -P $WDEFAULT_PORT $FTP_USERNAME@$FTP_SERVER
echo "Connection established"

echo "Uploading files..."
lftp $WDEFAULT_METHOD://$FTP_SERVER:$WDEFAULT_PORT -u $FTP_USERNAME,$FTP_PASSWORD -e "set ftp:ssl-allow no; ls; cd foo; ls; mput *; quit"

echo "FTP Deploy Complete"

