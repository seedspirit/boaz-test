FROM amazon/aws-lambda-python:3.8

RUN /var/lang/bin/python3.8 -m pip install --upgrade pip

RUN yum install git -y

RUN git clone https://github.com/seedspirit/boaz-test.git

RUN pip install -r boaz-test/requirements.txt

RUN cp boaz-test/lambda_function.py /var/task/

CMD ["lambda_function.handler"]
