# group_website

the wang group website based on bottlepy.

### Requirement:

1. python 3.5+
2. bottlepy 0.1+

### Use method:

*test on **ubuntu 16.04** and **mac OSX 10.13.6***

The whole website is based on [bottlepy](https://bottlepy.org/docs/dev/index.html), contents of website were store in `content` folder and rendered by [SimpleTemplate Engine](https://bottlepy.org/docs/dev/stpl.html).

1. Run `main.py` to start web server, the website will be at 127.0.0.1:8080 by default.
```
$ python3 main.py
```
2. Modify json file in `content` floder. Each one is related to the page of same name. The website will be reload automaticly after change.

3. run `collect_static.sh` to get static html file.
```
$ sh collect_static.sh
```

4. upload `*.html` and `media`, `static` folders to group ftp, so the website can be visit by link in XMU offical website.

### TODO:

1. Automaticly upload to ftp after collecting static html
2. Resolve line break in the content of website
3. Contents need to be complemented.

