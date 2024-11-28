# Base image com o OpenJDK 17
FROM openjdk:17-jdk-slim

# Definindo o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiando o JAR gerado para o diretório de trabalho
COPY target/login-auth-0.0.1-SNAPSHOT.jar app.jar

# Expondo a porta em que a aplicação vai rodar
EXPOSE 8080

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]