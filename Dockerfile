FROM python:3.11-slim

WORKDIR ./app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# main.py is the all project
COPY main.py main.py

EXPOSE 8080

CMD ["streamlit", "run", "main.py", "--server.port", "8080", "--server.address=0.0.0.0"]