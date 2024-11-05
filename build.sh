mvn clean compile package -DskipTests && \
docker-compose down && \
docker build -t personal/spring-gateway-service . && \
docker image prune -f && \
docker-compose up -d && \
docker logs -f spring-gateway-service
