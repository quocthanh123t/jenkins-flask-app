# Sử dụng Python image làm base
FROM python:3.9-slim-buster

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy requirements.txt và cài đặt dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Mở cổng mà ứng dụng lắng nghe (Flask chạy trên cổng 5000)
EXPOSE 5000

# Lệnh để chạy ứng dụng khi container khởi động
CMD ["python", "app.py"]
