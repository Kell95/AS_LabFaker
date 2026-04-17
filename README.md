# AS_LabFaker

Kelly Julieth Arango Henao
1036657098
Arquitectura de Software

./despliegue.md

[![CI/CD Pipeline](https://github.com/Kell95/AS_LabFaker/actions/workflows/build.yml/badge.svg)](https://github.com/Kell95/AS_LabFaker/actions/workflows/build.yml) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Bugs](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=bugs)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Coverage](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=coverage)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=ncloc)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=ncloc)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=security_rating)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=sqale_index)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=sqale_rating)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker) [![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=Kell95_AS_LabFaker&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=Kell95_AS_LabFaker)


Implementation of a Simple App with the next operations:
* Get random nations
* Get random currencies
* Get random Aircraft
* Get application version
* health check
Including integration with GitHub Actions, Sonarqube (SonarCloud), Coveralls and
Snyk
### Folders Structure
In the folder `src` is located the main code of the app
In the folder `test` is located the unit tests
### How to install it
Execute:
```shell

Arquitectura de Software
Universidad de Antioquia

$ mvnw spring-boot:run
```
to download the node dependencies
### How to test it
Execute:
```shell
$ mvnw clean install
```
### How to get coverage test
Execute:
```shell
$ mvwn -B package -DskipTests --file pom.xml
