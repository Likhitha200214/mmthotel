FROM openjdk:17-jdk-slim

WORKDIR /app

COPY /target/*.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar", \
  "--spring.datasource.url=jdbc:mysql://host.docker.internal:3306/mmttrainticket_booking?createDatabaseIfNotExist=true", \
  "--spring.datasource.username=root", \
  "--spring.datasource.password=admin", \
  "--spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver", \
  "--spring.jpa.database-platform=org.hibernate.dialect.MySQL8Dialect", \
  "--spring.jpa.hibernate.ddl-auto=update", \
  "--spring.jpa.show-sql=true", \
  "--spring.jpa.properties.hibernate.format_sql=true"]
