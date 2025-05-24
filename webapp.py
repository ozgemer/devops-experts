from flask import Flask, render_template, request, Response
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/login', methods=['GET', 'POST'])
def render_login():
    if request.method == 'POST':
        with open('data/login_log.txt', 'a') as f:
            user = request.form.get('name')
            current_datetime = datetime.now().isoformat()
            f.write(f'user {user} logged in @ {current_datetime}\n')
        Response({"user": user}, status=200)

    return render_template('login.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)