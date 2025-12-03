./gradlew clean build -x test
find . -name '*0.jar' -exec tar rvf javers-8.0.0.tar '{}' \;
