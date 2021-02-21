from flask import Flask


app = Flask(__name__)

@app.route("/")
def process_route():
    return "Hello, World!\n"
