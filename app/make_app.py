import logging

from flask import Flask, Blueprint
from flask_mako import MakoTemplates


#TODO re-write the views.py to use something like this
web_server_blueprint = Blueprint('web_server', 'web_server')
@web_server_blueprint.route('/')
def hello():
    return 'hi'


def app_factory() -> Flask:
    """
    Initialise the app. To be called by wsgi.
    """

    logger = logging.getLogger('website')

    app = Flask(__name__)

    # Register main blueprint
    app.register_blueprint(web_server_blueprint)

    MakoTemplates(app)
    app.config['MAKO_TRANSLATE_EXCEPTIONS'] = False

    return app
