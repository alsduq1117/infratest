# Dockerfile은 DockerImage를 생성하기 위한 스크립트(설정파일)이다.


FROM adoptopenjdk/openjdk11:latest
CMD ["./gradlew", "clean", "build"]
ARG JAR_FILE_PATH=build/libs/infratest-0.0.1-SNAPSHOT.jar    # 프로젝트 이름 확인할것
COPY ./build/libs/infratest-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]


 # adoptopenjdk/openjdk11 베이스 이미지를 사용
 # ./gradlew clean build를 실행
 # JAR 파일 경로를 변수로 설정
 # 빌드된 JAR 파일을 app.jar로 복사
 # Java를 실행하여 app.jar를 실행


# https://umanking.github.io/2021/07/11/spring-boot-docker-starter/