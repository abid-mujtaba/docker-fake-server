from flask import Flask, request


app = Flask(__name__)

@app.route("/")
def process_route():
    return "Hello, World!\n"

@app.route("/ohmyzsh/ohmyzsh/<path:subpath>", methods=["GET", "POST"])
def process_sub_path(subpath):
    return f"Accessing subpath: {subpath} with method: {request.method}\n"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=443, ssl_context="adhoc")
