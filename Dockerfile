FROM python:3.12-slim
WORKDIR /app

# install build deps
RUN apt-get update && apt-get install -y --no-install-recommends build-essential && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=src.main
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5001

ARG PORT=5001
ENV PORT=${PORT}
EXPOSE ${PORT}

# Use gunicorn for production-like serving. Bind to $PORT for platforms like Vercel.
CMD ["gunicorn", "-b", "0.0.0.0:${PORT}", "src.main:app"]
