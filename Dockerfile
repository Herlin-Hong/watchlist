FROM python:3.6

COPY . /opt
WORKDIR /opt
RUN pip install --no-cache-dir -r requirements.txt
CMD ["gunicorn", "-b", "0.0.0.0:80", "watchlist:app"]