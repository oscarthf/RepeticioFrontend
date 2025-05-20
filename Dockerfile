FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x startup.bash

EXPOSE 8000
CMD ["bash", "startup.bash"]

# To build the container, run the following command:
# docker build -t repeticio-frontend .
# To run the container, use the following command:
# docker run -p 8000:8000 repeticio-frontend