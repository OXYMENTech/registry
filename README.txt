# Registry management URL
http://localhost:8600/

# Tested JDK Version
1.8.0_202

# Build JAR

mvn package -DskipTests

# Build Docker image

docker build -t eureka-registry .


# 发布到（github）docker步骤

    参见： https://docs.github.com/cn/packages/using-github-packages-with-your-projects-ecosystem/configuring-docker-for-use-with-github-packages

    1. 完成本地编译
    2. 登录到github docker repo (USERNAME为github的登录账号，token.txt从github账号获取)

        cat token.txt | docker login https://docker.pkg.github.com -u USERNAME --password-stdin

    3. 创建本地推送标签

        docker tag eureka-registry docker.pkg.github.com/oxymentech/registry/eureka-registry:1.0.1

    4. 推送到Github

        docker push docker.pkg.github.com/oxymentech/registry/eureka-registry:1.0.1


======================== 2020-07-12 编译方式 =========================

首先修改VERSION文件

然后运行：
sudo ./build.sh

以上会自动拉取最新代码并编译Jar文件与Docker Image文件

编译后的docker镜像image为 eureka-registry