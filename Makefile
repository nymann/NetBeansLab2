
COMPONENT=Asteroids
LINUX_BIN=bin/asteroids/bin/asteroids
JAVA_FILES=$(shell find ${COMPOENT} -type f -name "*.java")
POM_FILES=$(shell find ${COMPOENT} -type f -name "pom.xml")
BIN=Asteroids/application/target/Asteroids-app-1.0-SNAPSHOT.zip

default all:run 

clean:
	mvn clean -f ${COMPONENT}/pom.xml

test: ${JAVA_FILES}
	mvn test -f ${COMPONENT}/pom.xml

${BIN}: ${JAVA_FILES} ${POM_FILES}
	mvn install -DskipTests -f ${COMPONENT}/pom.xml

install: ${BIN}

run: ${BIN}
	mvn nbm:run-platform -f ${COMPONENT}/application/pom.xml

${LINUX_BIN}: ${JAVA_FILES} ${POM_FILES}
	mvn nbm:build-installers -f ${COMPONENT}/application/pom.xml

package: ${LINUX_BIN}

start: ${LINUX_BIN}
	./bin/asteroids/bin/asteroids --nosplash

.PHONY:clean