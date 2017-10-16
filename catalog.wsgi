# def application(environ, start_response):
#     status = '200 OK'
#     output = 'This is under /vagrant/catalog APP'

#     response_headers = [('Content-type', 'text/plain'), ('Content-Length', str(len(output)))]
#     start_response(status, response_headers)

#     return [output]

import sys
sys.path.insert(0, '/vagrant/')
# sys.path.insert(0, '/vagrant/catalog')

from catalog.application import app as application

# sys.stdout = sys.stderr

print("WSGI Start")