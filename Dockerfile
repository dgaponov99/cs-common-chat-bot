FROM python:3.9-alpine
WORKDIR /user/src/app
COPY . /user/src/app
RUN pip install -r requirements.txt
CMD [ "python", "start.py" ]
