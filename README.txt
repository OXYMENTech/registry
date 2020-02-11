# Registry management URL
http://localhost:8600/

# Tested JDK Version
1.8.0_202

# Build JAR

mvn package -DskipTests

# Build Docker image

docker build -t docker-registry .
