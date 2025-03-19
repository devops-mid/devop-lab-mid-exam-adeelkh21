from app import db

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    fathername = db.Column(db.String(100), nullable=False)  # New field
    email = db.Column(db.String(100), unique=True, nullable=False)
    phone = db.Column(db.String(10), nullable=False)  # New field

