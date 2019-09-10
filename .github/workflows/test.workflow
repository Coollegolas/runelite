  
sudo: false
dist: trusty

language: java
jdk: oraclejdk8

before_cache:
  - rm -f  $HOME/.gradle/caches/modules-2/modules-2.lock
  - rm -fr $HOME/.gradle/caches/*/plugin-resolution/
cache:
  directories:
    - $HOME/.m2
    - $HOME/.gradle/caches/
    - $HOME/.gradle/wrapper/

script: ./gradlew build
