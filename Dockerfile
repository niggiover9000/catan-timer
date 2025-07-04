FROM python:3.12-slim

ARG VERSION=latest

WORKDIR /app
COPY index.html /app/

# Standard-Port für http.server ist 8000
EXPOSE 8000

CMD ["python3", "-m", "http.server", "8000"]