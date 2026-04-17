## Paso a paso del proceso de despliegue en la nube

### 1. Creación del proyecto

Se desarrolló una aplicación backend utilizando Spring Boot, la cual expone varios endpoints REST para generar datos aleatorios utilizando la librería Faker.



### 2. Creación del repositorio

El proyecto fue subido a un repositorio en GitHub, permitiendo el control de versiones y la integración con herramientas de despliegue continuo.



### 3. Configuración del pipeline CI/CD

Se creó el archivo:

```
.github/workflows/build.yml
```

Este pipeline realiza automáticamente:

* Ejecución de pruebas unitarias (`mvn test`)
* Análisis de calidad con SonarCloud
* Construcción del proyecto (`mvn package`)
* Generación del archivo `.jar`
* Construcción y publicación de la imagen Docker en Docker Hub



### 4. Creación del contenedor Docker

Se definió un `Dockerfile` para empaquetar la aplicación en un contenedor, utilizando Java 17 como entorno de ejecución.

Esto permite que la aplicación sea portable y ejecutable en cualquier entorno compatible con Docker.



### 5. Integración con la nube

Se utilizó la plataforma Render para desplegar la aplicación.

Se configuró el servicio conectando directamente el repositorio de GitHub y seleccionando la rama `main`.



### 6. Despliegue automático

Cada vez que se realiza un `git push`:

1. El pipeline de GitHub ejecuta:

   * pruebas
   * build
   * creación de imagen Docker

2. Render:

   * clona el repositorio
   * construye el contenedor
   * despliega automáticamente la aplicación



##  Pruebas de ejecución del backend en la nube

Una vez desplegada la aplicación, se verificó su correcto funcionamiento accediendo a los endpoints públicos:

### 🔹 Endpoint de verificación (Health Check)

```
https://as-labfaker.onrender.com/
```

Respuesta:

```
HEALTH CHECK OK!
```



###  Endpoint de versión

```
https://as-labfaker.onrender.com/version
```

Respuesta:

```
The actual version is 1.0.0
```


###  Endpoint de naciones

```
https://as-labfaker.onrender.com/nations
```

Respuesta:
Se obtiene un arreglo JSON con datos aleatorios de países, incluyendo nacionalidad, capital, bandera e idioma.


### Endpoint de monedas

```
https://as-labfaker.onrender.com/currencies
```

Respuesta:
Se genera un listado de monedas con nombre y código.



### Endpoint de aviación

```
https://as-labfaker.onrender.com/aviation
```

Respuesta:
Se obtiene información aleatoria sobre aeronaves, aeropuertos y datos METAR.



## Conclusión

Las pruebas realizadas evidencian que la aplicación fue correctamente desplegada en la nube y que los servicios REST funcionan de manera adecuada, cumpliendo con los requisitos de despliegue continuo y ejecución en un entorno cloud.
