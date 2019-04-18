import requests, os
os.environ['NO_PROXY'] = '127.0.0.1'

def collect_html():
    urls = ['index', 'leader', 'publications', 'research', 'people', 'laboratory']
    for url in urls:
        html_url = 'http://127.0.0.1:8080/' + url
        print(html_url)
        r = requests.get(html_url)
        content = r.content.decode('utf-8')

        # replace nav menu link
        for u in urls:
            content = content.replace("href=\"/{}\"".format(u), "href=\"{}.html\"".format(u))

        # replace media, static link
        content = content.replace("src=\"/media", "src=\"media")
        content = content.replace("href=\"/static", "href=\"static")
        content = content.replace("src=\"/static", "src=\"static")

        with open(url+'.html', 'w') as f:
            f.write(content)

if __name__ == "__main__":
    collect_html()