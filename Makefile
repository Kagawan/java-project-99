DEFAULT_GOAL := build-run

setup:
	./gradlew wrapper --gradle-version 8.7

clean:
	./gradlew clean

build:
	./gradlew clean build

install:
	./gradlew installDist
run-dist:
	./gradlew clean installDist
	./gradlew checkstyleMain
	./build/install/app/bin/app
run:
	./gradlew run

test:
	./gradlew test

report:
	./gradlew jacocoTestCoverage jacocoTestReport

lint:
	./gradlew checkstyleMain

check-deps:
	./gradlew dependencyUpdates -Drevision=release


build-run: build run

.PHONY: build