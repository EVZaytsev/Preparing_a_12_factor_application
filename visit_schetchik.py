from flask import Flask
import redis


app = Flask(__name__)
r = redis.Redis(host='redis', port=6379)
@app.route('/visit/<pagename>')
def visit(pagename):
    r.incr(pagename)
    return pagename
    
    
@app.route('/show/<pagename>')
def show(pagename):
    result = r.get(pagename)
    return result
    

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=81, debug=True)
