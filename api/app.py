from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return {
        "message": "Olá, mundo! Esta é minha API Flask!"
    }

if __name__ == '__main__':
    app.run(debug=True) 
