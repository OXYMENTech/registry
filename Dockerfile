FROM saorikido/jre1.8.0_202:1.0.0

COPY ./target/registry-snapshot.jar /

EXPOSE 8600

CMD [ "sh", "-c", "java -jar registry-snapshot.jar"]