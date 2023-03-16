FROM ubuntu

COPY . /home/cloud_project
WORKDIR /home/cloud_project

ENV VIRTUAL_ENV=/opt/venv
RUN apt-get update && apt-get install -y python3 && apt install -y python3.10-venv && python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install -r requirements.txt


CMD ["python", "app.py"]
