from flask import Blueprint, redirect, send_from_directory, url_for, current_app
from flask_mako import render_template

from app.helpers import NavContext


web_app_blueprint = Blueprint('app', 'web_app')


@web_app_blueprint.route('/')
def index():
    return redirect(url_for('app.home'))


@web_app_blueprint.route('/home/')
def home():
    return render_template('homepage.html.mako')


@web_app_blueprint.route('/projects/')
def projects():
    return render_template('projects.html.mako', current_page_context=NavContext.projects)


@web_app_blueprint.route('/music/')
def music():
    return render_template('music.html.mako', current_page_context=NavContext.music)


@web_app_blueprint.route('/partita/')
def partita():
    return render_template('partita.html.mako', current_page_context=NavContext.partita)


@web_app_blueprint.route('/cv/')
def cv():
    return render_template('cv.html.mako', current_page_context=NavContext.cv)


@web_app_blueprint.errorhandler(404)
def page_not_found(error):
    return render_template('error_handler.html.mako', error_code=404, error_message='Page Not Found.'), 404


# Catch everything else that isn't explicitly accounted for, and interpret as internal server error
@web_app_blueprint.errorhandler(Exception)
def catch_all_error(error):
    return render_template('error_handler.html.mako', error_code=500, error_message='Internal Server Error'), 500


# TODO Apache should handle all of these
@web_app_blueprint.route('/css/<path:filename>')
def serve_css(filename):
    return send_from_directory(current_app.config['CSS_FOLDER'], filename, as_attachment=True)


@web_app_blueprint.route('/js/<path:filename>')
def serve_js(filename):
    return send_from_directory(current_app.config['JS_FOLDER'], filename, as_attachment=True)


@web_app_blueprint.route('/images/<path:filename>')
def serve_images(filename):
    return send_from_directory(current_app.config['IMAGES_FOLDER'], filename, as_attachment=True)


@web_app_blueprint.route('/favicon-32x32.png')
def return_favicon():
    return send_from_directory(current_app.root_path, 'favicon-32x32.png')
