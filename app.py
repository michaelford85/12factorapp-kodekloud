from flask import Flask
from redis import Redis
import os

app = Flask(__name__)
redisDb = Redis(host='redis-db', port=6379)
# redisDb = Redis(host=os.getenv("HOST"), port=os.getenv("PORT"))

@app.route('/')
def index():
    redisDb.incr('visitorCount')
    visitCount = str(redisDb.get('visitorCount'), 'utf-8')
    return "Hello World! " + visitCount

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
