
# 1. Use Python 3.12 lightweight image
FROM python:3.12-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy requirements file
COPY requirements.txt .

# 4. Install Python dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt

# 5. Copy application code
COPY app/ ./app/

# 6. Document application port
EXPOSE 8000

# 7. Start FastAPI using Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
