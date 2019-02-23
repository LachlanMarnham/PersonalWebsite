import sys
sys.path.append('/usr/local')
from app.make_app import app_factory

application = app_factory()
