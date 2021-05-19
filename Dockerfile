FROM maven:3.8.1-openjdk-11

WORKDIR /myapp

COPY ./pom.xml ./pom.xml

RUN mvn dependency:go-offline -B

COPY . .

RUN mvn package -Dmaven.test.skip=true

ENTRYPOINT tail -f /dev/null
