import sys
sys.path.append('/usr/local/app')
from make_app import app_factory

application = app_factory()
