# Sistemas Distribuidos 2-2020

Integrantes del grupo:

  - Nicolás Gutiérrez - [ngutierrezp](https://github.com/ngutierrezp)
  - Javier Perez -[JavierPerezCaceres](https://github.com/JavierPerezCaceres)

## PEP-1

En esta entrega se requiere la implementación de un sistema que pueda generar y hacer envio de correo de permisos basados en la plataforma [Comisaria Virtual](https://comisariavirtual.cl/). 

![Imagen Comisaria](images/comisaria.png)

Los requisistos de esta implementación es la creación de un sistema legado con un frontend y backend conectado a una base de datos. Se solicita además que :

  * Un formulario web básico de entrada de datos (RUN/DNI, Nombre, Dirección, Motivo del permiso)

  * Un sistema/modulo backend que se encargar´a de determinar la fecha y hora de solicitud del permiso, agregar una ventana de X minutos para la validez de este y escribir sobre la base de datos (tercer elemento) los datos del permiso generado.

  * Una tabla de base de datos, en la cual se almacenen todos los permisos generados.


## Tecnologias utilizadas


### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
