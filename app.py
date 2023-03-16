from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("index.html")

@app.route("/main")
def main():
    return render_template("main.html")

app.run(host="0.0.0.0")