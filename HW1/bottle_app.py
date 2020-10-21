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
    return template('<h1>Hello {{name}} Welcome to Web Programming 1!</h1>', name=name)


@route('/')
def get_show_list():
    connection = sqlite3.connect("work.db")
    cursor = connection.cursor()
    cursor.execute("select * from todo")
    result = cursor.fetchall()
    cursor.close()
    return template("index", rows=result)


if ON_PYTHONANYWHERE:
    application = default_app()
else:
    debug(True)
    run(host="localhost", port=8080)
