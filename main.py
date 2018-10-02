# -*- coding: utf-8 -*-
 
import bottle
import json

def get_info(page_type):
    with open('./content/' + page_type+'.json', 'r') as f:
        info = json.load(f)
    return info

@bottle.route('<filename:path>')
def static(filename):
    return bottle.static_file(filename, root='./')

@bottle.route('')
@bottle.route('/')
@bottle.route('/index')
def index_page():
    index_info = get_info('index')
    return bottle.template('index', index_info)

@bottle.route('/leader')
def leader_page():
    leader_info = get_info('leader')
    return bottle.template('leader', leader_info)

@bottle.route('/publications')
def pub_page():
    publications_info = get_info('publications')
    return bottle.template('publications', publications_info)

@bottle.route('/research')
def research_page():
    research_info = get_info('research')
    return bottle.template('research', research_info)

@bottle.route('/people')
def people_page():
    people_info = get_info('people')
    return bottle.template('people', people_info)

@bottle.route('/laboratory')
def laboratory_page():
    laboratory_info = get_info('laboratory')
    return bottle.template('laboratory', laboratory_info)


if __name__ == '__main__':
    bottle.run(host='127.0.0.1', port=8080, debug=True, reloader=True)