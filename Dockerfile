# syntax=docker/dockerfile:1

FROM python:3

WORKDIR /main

RUN git clone https://github.com/pdxgx/neoepiscope.git

RUN pip install pipreqs

RUN pipreqs /main/neoepiscope

RUN pip3 install -r /main/neoepiscope/requirements.txt

COPY . /main/

RUN pip3 install neoepiscope

CMD cd /main/neoepiscope | python3 setup.py test