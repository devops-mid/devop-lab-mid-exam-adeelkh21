CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    fathername VARCHAR(100) NOT NULL,  -- New field
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(10) NOT NULL  -- New field
);

