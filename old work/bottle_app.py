# A very simple Bottle Hello World app for you to get started with...
import os
import sqlite3

from bottle import  get, post, request, template, redirect, route

ON_PYTHONANYWHERE = "PYTHONANYWHERE_DOMAIN" in os.environ.keys()

if ON_PYTHONANYWHERE:
    from bottle import default_app
else:
    from bottle import run, debug

@route('/<name>')
def index(name):
    return template("hello", name=name)

@route('/hello')
def basicHello():
    return ("<h1>Hello Welcome to Web Programming 1!</h1>")

@get('/add_item')
def get_new_item():
    return template("add_item")


@post('/add_item')
def post_new_item():
    new_item = request.forms.get("new_item").strip()
    connection = sqlite3.connect("work.db")
    cursor = connection.cursor()
    cursor.execute("insert into todo (name, status) values (?,?)", (new_item, 1))
    connection.commit()
    cursor.close()
    redirect('/')

@route('/')
def get_show_list():
    connection = sqlite3.connect("work.db")
    cursor = connection.cursor()
    cursor.execute("select * from todo")
    result = cursor.fetchall()
    cursor.close()
    return template("index", rows=result)


@get('/set_status/<id:int>/<value:int>')
def get_set_status(id, value):
    connection = sqlite3.connect("work.db")
    cursor = connection.cursor()
    cursor.execute("update todo set status=? where id=?", (value, id,))
    connection.commit()
    cursor.close()
    redirect('/')


if ON_PYTHONANYWHERE:
    application = default_app()
else:
    debug(True)
    run(host="localhost", port=8080)
