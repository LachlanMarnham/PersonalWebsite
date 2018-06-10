from flask import Flask, redirect, url_for
from flask_mako import MakoTemplates, render_template

app = Flask(__name__)
app.template_folder = 'templates'
mako = MakoTemplates(app=app)


@app.route('/')
def index():
    return redirect(url_for('home'))


@app.route('/home/')
def home():
    return render_template('homepage.html.mako')


@app.route('/projects/')
def projects():
    return render_template('projects.html.mako')


@app.route('/music/')
def music():
    return render_template('music.html.mako')


@app.route('/partita/')
def partita():
    return render_template('partita.html.mako')


@app.route('/cv/')
def cv():
    return render_template('cv.html.mako')
