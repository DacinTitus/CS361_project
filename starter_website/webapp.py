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

    #   if request.method == 'GET' and 'searchButton' in request.form:
        #   query = 'SELECT '
    
    if request.method == 'GET':   # display table
        query = 'SELECT * FROM matches'
        result = execute_query(db_connection, query).fetchall()
        return render_template('index.html', rows = result)

"""
    if request.method == 'POST':   # display new table based on search criteria
        query = 'SELECT * FROM matches where groupId = %s or teamA = %s or teamB = %s'
        result = execute_query(db_connection, query).fetchall()
        return redirect(url_for('index'))
"""

@webapp.route('/results', methods = ['POST', 'GET'])
def results():
    print("Fetching and rendering results web page")
    db_connection = connect_to_database()
    ints = ['option', 'criteria']

    radio = request.args.get('option')
    criteria = request.args.get('criteria')

    if radio == 'group':
        radio_data = 0
    else:
        radio_data = 1

    if radio_data == 0:
        query = "SELECT * from matches where groupId = '{}'".format(criteria)
        
    else:
        query = "SELECT * from matches where teamA = '{}' or teamB = '{}'".format(criteria, criteria)

    result = execute_query(db_connection, query).fetchall()
    return render_template('results.html', rows = result)
