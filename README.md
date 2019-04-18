# group_website

The Wang Group website based on bottlepy.

### Requirement:

1. python 3.6+
2. bottle 0.12+
3. requests 2.21+

### Use Method:

Test on **Windows 10**, **Ubuntu 16.04** and **macOS 10.13.6**.

The whole website is based on ***[bottlepy](https://bottlepy.org/docs/dev/index.html)***, contents of website were store in `group_website/content` folder and rendered by ***[SimpleTemplate Engine](https://bottlepy.org/docs/dev/stpl.html)***.

0. Install requirement (assume Python3.6 is installed) 
```
$ pip3 install -r requirement.txt
```
1. Enter `group_website` folder and open an terminal then run `main.py` to start web server, the website will be at [127.0.0.1:8080](http://127.0.0.1:8080) by default. Keep this terminal open.
```
$ python3 main.py
```
2. Modify json file in `group_website/content` floder. Each one is related to the page of same name. The website will be reload automaticly after change. Check every detail you've modified and make sure the websites render normally (no error page).

3. Enter `group_website` folder and open **another** terminal then run `collect_html.py` to get static html file.
```
$ python3 collect_html.py
```

4. Open `index.html` in `group_website` folder and check if website renders normally.

5. Upload `*.html` and `media`, `static` folders to group ftp, so the website can be visit by link in XMU offical website.

### Image Path
All media image store in `media` folder.

`group_website/media/toc_image`  - for index page

`group_website/media/article_image` - for publications page

`group_website/media/person_image`  - for people page

`group_website/media/device_iamge`  - for laboratory page


### How to Get Terminal in Windows10?

1. enter `group_website` folder

2. press **SHIFT** key and right-click on blank field

3. click "open PowerShell here" or "在此处打开PowerShell窗口"
![](media/powershell.jpg)

### TODO:

1. Automaticly upload to ftp after collecting static html

