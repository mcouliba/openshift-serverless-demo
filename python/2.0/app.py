import os

import flask

app = flask.Flask(__name__)

@app.route('/')
def index():
    """ Displays the index page accessible at '/'
    """
    return flask.render_template('index.html')

@app.route('/api/greetings')
def hello_world():
   target = os.environ.get('TARGET', 'Python')
   return 'Hello, {}!\n'.format(target)

@app.route('/api/python')
def greeting():
    return "Welcome, Python with Serverless!"

if __name__ == "__main__":
   app.run(debug=True,host='0.0.0.0',port=int(os.environ.get('PORT', 8080)))