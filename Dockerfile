FROM saorikido/jre1.8.0_202:1.0.0

COPY ./registry-1.0.0.jar /

EXPOSE 8600

CMD [ "sh", "-c", "java -jar registry-1.0.0.jar"]