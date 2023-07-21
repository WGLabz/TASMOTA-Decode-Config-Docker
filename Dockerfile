FROM python:3.12.0b3-alpine3.18

WORKDIR /usr/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY decode-config.py .
COPY watch_and_process.py .

ENTRYPOINT [ "python","-u", "watch_and_process.py" ]