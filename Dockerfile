# Use official Maven image to build the WAR file
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Use Tomcat with JRE to run the application
FROM tomcat:10.1-jre17
# Remove default root applications of Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy built WAR file from build stage to tomcat webapps as ROOT.war (so it runs on main domain)
COPY --from=build /app/target/AbhiroElectronicEnterprises.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]