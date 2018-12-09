import http

from flask import Flask, redirect, send_from_directory, url_for
from flask_mako import MakoTemplates, render_template

from app.helpers import NavContext

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
    return render_template('projects.html.mako', current_page_context=NavContext.projects)


@app.route('/music/')
def music():
    return render_template('music.html.mako', current_page_context=NavContext.music)


@app.route('/partita/')
def partita():
    return render_template('partita.html.mako', current_page_context=NavContext.partita)


@app.route('/cv/')
def cv():
    return render_template('cv.html.mako', current_page_context=NavContext.cv)


@app.route('/css/<path:filename>')
def serve_css(filename):
    return send_from_directory(app.config['CSS_FOLDER'], filename, as_attachment=True)


@app.route('/js/<path:filename>')
def serve_js(filename):
    return send_from_directory(app.config['JS_FOLDER'], filename, as_attachment=True)


@app.route('/images/<path:filename>')
def serve_images(filename):
    return send_from_directory(app.config['IMAGES_FOLDER'], filename, as_attachment=True)


@app.errorhandler(404)
def page_not_found(error):
    return render_template('error_handler.html.mako', error_code=404, error_message='Page Not Found.'), 404


# Catch everything else that isn't explicitly accounted for, and interpret as internal server error
@app.errorhandler(Exception)
def catch_all_error(error):
    return render_template('error_handler.html.mako', error_code=500, error_message='Internal Server Error'), 500
