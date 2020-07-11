# Registry management URL
http://localhost:8600/

# Tested JDK Version
1.8.0_202

# Build JAR

mvn package -DskipTests

# Build Docker image

docker build -t eureka-registry .



======================== 2020-07-12 编译方式 =========================

sudo ./build.sh

以上会自动拉取最新代码并编译Jar文件与Docker Image文件

编译后的docker镜像image为 eureka-registry