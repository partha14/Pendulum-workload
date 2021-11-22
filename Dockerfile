FROM fkrull/multi-python:bionic

WORKDIR /home/ec2-user

RUN python2.7 -m pip install -U setuptools
RUN python2.7 -m pip install pendulum==2.0.5
RUN python3.9 -m pip install --upgrade pip
RUN python3.9 -m pip install pendulum==2.0.5

COPY pendulum_workload.py ./
