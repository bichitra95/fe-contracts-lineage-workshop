#Deriving the latest base image
FROM python:3.10
LABEL authors="bichitra.sahoo"


# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /home

#to COPY the remote file at working directory in container

COPY requirements.txt ./requirements.txt
#RUN pip install -U pip setuptools wheel ruamel.yaml.clib==0.2.6
RUN pip install --prefer-binary --no-cache-dir --upgrade -r requirements.txt

COPY datacontracts/ ./datacontracts/
COPY .atlan/ ./.atlan/

#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD [ "python3", "./datacontracts/contract_verification.py"]
