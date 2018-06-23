from flask import Flask, redirect, send_from_directory, url_for
from flask_mako import MakoTemplates, render_template

app = Flask(__name__)
app.template_folder = 'templates'
mako = MakoTemplates(app=app)
app.config['CSS_FOLDER'] = 'css'
app.config['JS_FOLDER'] = 'js'
app.config['IMAGES_FOLDER'] = 'images'

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


@app.route('/css/<path:filename>')
def serve_css(filename):
    return send_from_directory(app.config['CSS_FOLDER'], filename, as_attachment=True)


@app.route('/js/<path:filename>')
def serve_js(filename):
    return send_from_directory(app.config['JS_FOLDER'], filename, as_attachment=True)


@app.route('/images/<path:filename>')
def serve_images(filename):
    return send_from_directory(app.config['IMAGES_FOLDER'], filename, as_attachment=True)
