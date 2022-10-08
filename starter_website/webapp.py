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
@webapp.route('/')
def index():
    # return "Hello, there"

    return render_template('index.html')


@webapp.route('/restaurants.html', methods = ['POST', 'GET'])
def restaurants():
    print("Fetching and rendering restaurants web page")
    db_connection = connect_to_database()
    
    if request.method == 'GET':   # display table
        query = 'SELECT * FROM restaurants'
        result = execute_query(db_connection, query).fetchall()
        return render_template('restaurants.html', rows = result)

    if request.method == 'POST' and 'addButton' in request.form:   # add new restaurant
        new_restName = request.form['restName']
        new_city = request.form['city']
        new_state = request.form['state']
        data = (new_restName, new_city, new_state)
        print(data)
        query = 'INSERT into restaurants (restName, city, state) VALUES (%s, %s, %s)'
        execute_query(db_connection, query, data)
        return redirect(url_for('restaurants'))

    if request.method == 'POST' and 'deleteButton' in request.form:
        restId = request.form['restId']
        data = (restId,)
        query = 'DELETE from restaurants WHERE restId = %s'
        result = execute_query(db_connection, query, data)
        return redirect(url_for('restaurants'))
