from flask import Flask,render_template
app = Flask(__name__)

@app.route("/")
@app.route("/index")
def index():
    return render_template("registration.html")

@app.route("/about")
     return "<h1>About page</h1>"     


if __name__=='__main__':
    app.run(debug=True)
    
