FROM python:3.12.0b3-alpine3.18

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY decode-config.py .

ENTRYPOINT [ "python", "watch_and_process.py" ]