# 1️⃣ Use the correct base image
FROM python:3.10

# 2️⃣ Set the working directory inside the container
WORKDIR /app

# 3️⃣ Copy application code into the container
COPY . /app

# 4️⃣ Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# 5️⃣ Expose the correct port (Flask default is 5000)
EXPOSE 5000

# 6️⃣ Set the correct entry point to run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

