import logging

from flask import Flask
from flask_mako import MakoTemplates

from app.views import web_app_blueprint


def app_factory() -> Flask:
    """
    Initialise the app. To be called by wsgi.
    """

    logger = logging.getLogger('website')

    app = Flask(__name__)

    app.template_folder = 'templates'
    app.config['CSS_FOLDER'] = 'css'
    app.config['JS_FOLDER'] = 'js'
    app.config['IMAGES_FOLDER'] = 'images'

    # Register main blueprint
    app.register_blueprint(web_app_blueprint)

    MakoTemplates(app)
    app.config['MAKO_TRANSLATE_EXCEPTIONS'] = False

    return app
