FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

WORKDIR /app/src/

EXPOSE 8501

CMD [ "streamlit", "run", "app.py", "--server.address=0.0.0.0"]