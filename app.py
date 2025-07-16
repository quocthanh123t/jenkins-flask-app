from flask import Flask
import datetime

app = Flask(__name__)

@app.route('/')
def hello():
    # Thay đổi nội dung này để kiểm tra CI/CD sau này
    return f"Hello from Jenkins CI/CD with Docker! Current time: {datetime.datetime.now()}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
