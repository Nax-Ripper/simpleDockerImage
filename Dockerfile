FROM alpine 


RUN apk update
RUN apk add nano
RUN apk add python3

VOLUME [ "/myDocker/myHome" ]
WORKDIR /myDocker/myHome


RUN mkdir testFolder
RUN touch hello.txt
RUN echo "This is my first Docker Container" > hello.txt

COPY hello.py ./
# RUN python3 hello.py
# CMD [ "sh", "python3 hello.py" ]

#  CMD ["echo","This is my first Docker Container!!!!!!!!!!!!"]
# CMD [ "sleep 600" ]


