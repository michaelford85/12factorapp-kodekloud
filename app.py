from flask import Flask

app = Flask(__name__)

visitCount = 0

@app.route('/')
def index():
    global visitCount
    visitCount+=1
    return "Hello World! " + str(visitCount)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
