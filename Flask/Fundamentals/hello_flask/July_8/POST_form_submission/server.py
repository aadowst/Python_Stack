# POST Form Submission and Session
from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)  

app = Flask(__name__)
app.secret_key = 'keep it secret, keep it safe' # set a secret key for security purposes


@app.route('/users', methods=['POST'])
def create_user():
    print("Got Post Info")
    print(request.form)
    session['username'] = request.form['name']
    session['useremail'] = request.form['email']
    return redirect("/show")	 
    

@app.route("/show")
def show_user():
    print("Showing the User Info From the Form")
    print(request.form)
    return render_template("show.html")

@app.route('/')
def index():
    return render_template("index.html") 


# THIS MUST BE ON THE BOTTOM
if __name__=="__main__": 
    app.run(debug=True)  