FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app

# Install project dependencies
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install pytest
RUN pip install --no-cache-dir pytest

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
