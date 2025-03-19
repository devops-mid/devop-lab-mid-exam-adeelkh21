from flask import render_template, request, redirect, url_for, flash
import re  # Import regex for validation
from app import app, db
from app.models import User

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/submit', methods=['POST'])
def submit():
    name = request.form['name']
    fathername = request.form['fathername']
    email = request.form['email']
    phone = request.form.get('phone', '')

    # Server-side phone validation (must be exactly 10 digits)
    if not re.match(r'^\d{10}$', phone):
        flash("Invalid phone number! It must be exactly 10 digits.", "error")
        return redirect(url_for('index'))

    # Create new user instance
    user = User(name=name, fathername=fathername, email=email, phone=phone)
    db.session.add(user)
    db.session.commit()

    flash("User registered successfully!", "success")
    return redirect(url_for('index'))

