FROM python:3.11.4-alpine

WORKDIR /usr/src/app

# prevent python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# ensure python output is sent directly to the terminal without buffering 
ENV PYTHONUNBUFFERED 1 

RUN pip install --upgrade pip
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt 

# copy entry point, make sure you have the permission to copy
# you can use chmod +x ./entrypoint.sh on linux and mac
COPY --chmod=777 entrypoint.sh  /usr/src/app/entrypoint.sh

# Install bash in case you're using bash in the script
RUN apk add --no-cache bash

# Make it entrypoint executable executable
RUN chmod +x  /usr/src/app/entrypoint.sh

# copy the whole project to the woking directory 
COPY . /usr/src/app/

# specify entry point 
ENTRYPOINT ["/usr/src/app/entrypoint.sh" ]