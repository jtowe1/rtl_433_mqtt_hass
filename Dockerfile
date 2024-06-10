FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "./rtl_433_mqtt_hass.py", "--host", "10.0.0.245", "--retain", "--debug"]