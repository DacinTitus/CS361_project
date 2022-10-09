from flask import Flask, render_template, url_for
from flask import request, redirect
from db_connector.db_connector import connect_to_database, execute_query
#create the web application
webapp = Flask(__name__)


# source venv/scripts/activate.bat // in CMD
# source venv/scripts/activate.ps1 // in powershell
# export FLASK_APP=run.py
# python -m flask run -h 0.0.0.0 -p 1909 --reload

# gunicorn run:webapp -b 0.0.0.0:1909 -D


# home page with links to other pages
@webapp.route('/', methods = ['POST', 'GET'])
def index():
    print("Fetching and rendering matches web page")
    db_connection = connect_to_database()
    
    if request.method == 'GET':   # display table
        query = 'SELECT * FROM matches'
        result = execute_query(db_connection, query).fetchall()
        return render_template('index.html', rows = result)

"""
@webapp.route('/', methods = ['POST', 'GET'])
def matches():
    print("Fetching and rendering matches web page")
    db_connection = connect_to_database()
    
    if request.method == 'GET':   # display table
        query = 'SELECT * FROM matches'
        result = execute_query(db_connection, query).fetchall()
        return render_template('index.html', rows = result)

"""