FROM openjdk:8u111-jre-alpine

MAINTAINER Lucas Villela Neder Issa "issa@dcc.ufmg.br"

EXPOSE 10389

RUN apk add --no-cache openssl
RUN mkdir /ldap
WORKDIR /ldap
RUN wget https://github.com/kwart/ldap-server/releases/download/2017-09-04/ldap-server.jar

COPY users.ldif /ldap/users.ldif

CMD ["java","-jar","ldap-server.jar", "users.ldif"]

