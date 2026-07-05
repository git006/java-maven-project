# 1. 运行阶段：使用轻量级的 JRE 基础镜像
FROM eclipse-temurin:17-jre-alpine

# 设置工作目录
WORKDIR /app

# 将 Maven 打包好的 jar 包复制到镜像中
# 注意：target/ 目录下的 jar 包名字要和你的 pom.xml 对应，这里假设叫 app.jar
COPY target/*.jar app.jar

# 暴露端口（如果是 Web 服务的话）
EXPOSE 8080

# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]