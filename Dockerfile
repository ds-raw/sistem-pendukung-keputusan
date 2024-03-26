# Gunakan Python runtime resmi sebagai base image
FROM python:3.7-slim

# Setel direktori kerja di dalam kontainer
WORKDIR ./

# Copy seluruh konten dari direktori 'sistem-pendukung-keputusan' ke kontainer di '/app'
COPY ./

# Setel direktori kerja ke '/app' di dalam kontainer
WORKDIR ./

# Instal paket yang diperlukan yang tercantum di requirements.txt
COPY ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Buka port 8050 agar bisa diakses dari luar kontainer
EXPOSE 8050

# Jalankan aplikasi Dash saat kontainer diluncurkan
CMD ["python", "app.py"]
