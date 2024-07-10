# app.py

from flask import Flask

# Create a Flask application
app = Flask(__name__)

# Define a route and its handler
@app.route('/')
def hello():
    return 'Hello, World! This is a simple Flask application.'

# Run the application
if __name__ == '__main__':
    app.run(debug=True, port=5000)
