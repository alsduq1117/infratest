# Dockerfile은 DockerImage를 생성하기 위한 스크립트(설정파일)이다.


FROM adoptopenjdk/openjdk11                                     # adoptopenjdk/openjdk11 베이스 이미지를 사용
CMD ["./gradlew", "clean", "build"]                             # ./gradlew clean build를 실행
ARG JAR_FILE_PATH=build/libs/jpashop-0.0.1-SNAPSHOT.jar         # JAR 파일 경로를 변수로 설정
COPY ${JAR_FILE_PATH} app.jar                                   # 빌드된 JAR 파일을 app.jar로 복사
ENTRYPOINT ["java", "-jar", "app.jar"]                          # Java를 실행하여 app.jar를 실행




# https://umanking.github.io/2021/07/11/spring-boot-docker-starter/