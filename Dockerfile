FROM python:3.9-slim

WORKDIR /app

RUN apt update

RUN apt install -y curl
# download certificate
RUN curl -sL https://netfree.link/dl/unix-ca.sh | sh
# pip config
RUN pip config set global.cert /usr/lib/ssl/certs/ca-certificates.crt

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY convert_image_to_pdf.py ./

ENTRYPOINT ["python", "convert_image_to_pdf.py"]


