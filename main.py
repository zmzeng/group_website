# -*- coding: utf-8 -*-
 
import bottle
import json

app = bottle.default_app()

# get content from json files
def get_info(page_type):
    with open('./content/' + page_type+'.json', 'r', encoding='utf-8') as f:
        info = json.load(f)
    return info

# get media file
@app.route('/media/<filename:path>')
def get_media_file(filename):
    return bottle.static_file(filename, root='./media')

# get static file
@app.route('/static/<filename:path>')
def get_static_file(filename):
    return bottle.static_file(filename, root='./static')

@app.route('/')
@app.route('/index')
def index_page():
    index_info = get_info('index')
    return bottle.template('index', index_info)

@app.route('/leader')
def leader_page():
    leader_info = get_info('leader')
    return bottle.template('leader', leader_info)

@app.route('/publications')
def pub_page():
    publications_info = get_info('publications')
    return bottle.template('publications', publications_info)

@app.route('/research')
def research_page():
    research_info = get_info('research')
    return bottle.template('research', research_info)

@app.route('/people')
def people_page():
    people_info = get_info('people')
    return bottle.template('people', people_info)

@app.route('/laboratory')
def laboratory_page():
    laboratory_info = get_info('laboratory')
    return bottle.template('laboratory', laboratory_info)


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True, reloader=True)