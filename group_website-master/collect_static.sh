#!/bin/bash

#--------------    
# This script convert website into static html file.
# 
# 1. download html form ${URL}
# 2. convert /media to media and /static to static to make all static file valid
# 
# (you should grub static & media floder by yourself)
# code by zmzeng (zmzeng12@foxmail.com), 2018.10.02
#-------------- 
URL=127.0.0.1:8080

curl ${URL}/index -o index.html
curl ${URL}/leader -o leader.html
curl ${URL}/publications -o publications.html
curl ${URL}/research -o research.html
curl ${URL}/people -o people.html
curl ${URL}/laboratory -o laboratory.html

echo '-----------------'
echo 'download complete!'
echo '-----------------'

# menu
sed -i "" 's#href="/index"#href="index.html"#' *.html
sed -i "" 's#href="/leader"#href="leader.html"#' *.html
sed -i "" 's#href="/publications"#href="publications.html"#' *.html
sed -i "" 's#href="/research"#href="research.html"#' *.html
sed -i "" 's#href="/people"#href="people.html"#' *.html
sed -i "" 's#href="/laboratory"#href="laboratory.html"#' *.html

# media
sed -i "" 's#src="/media#src="media#' *.html

# static
sed -i "" 's#href="/static#href="static#' *.html
sed -i "" 's#src="/static#src="static#' *.html

echo '-----------------'
echo 'replace complete!'
echo '-----------------'
