from jupyter_server.auth import passwd
import os

c.ServerApp.open_browser = False

if "JUPYTER_PASSWD" in os.environ:
    c.ServerApp.password = passwd(os.environ['JUPYTER_PASSWD'])
if "JUPYTER_PORT" in os.environ and os.environ['JUPYTER_PORT'].isdigit():
    c.ServerApp.port = int(os.environ['JUPYTER_PORT'])