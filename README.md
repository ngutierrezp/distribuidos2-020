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

Las tecnologias utilizadas son:

* Vue.js (JavaScript)
* Ruby on Rails (Ruby)
* PostgreSQL (DB)


## Configuración del enterno

La información para la configuración de los enternos de desarrollo se encuentra en cada parte del proyecto:

  * [Frontend](frontend/README.md)
  * [Backend](backend/README.md)

## Análisis del sistema

Acontinuación se muestra una tabla resumen del analisis del sistema:

| Caracteristica | Descripcion | Cumplimiento |
|-|-|-|
| Poner los recursos a disposición | Facilitar a los usuarios y aplicaciones acceder a recursos remotos de manera eficiente. | No se cumple. Esto debido a que al estar con un despliegue local, no se está facilitando ningún recurso de forma remota. Además no existe un sistema de autentificación y en cuanto a la seguridad, los datos no se encriptan al momento de enviarse desde el front al back y viceversa. |
| Transparencia de la distribución | Esconder el hecho que procesos y recursos están físicamente distribuidos en múltiples computadores. | No se cumple. Como se trabaja de forma local, los componentes no se encuentran distribuidos , es decir, todo se encuentra dentro de localhost con puertos específicos. Con esto, no existe transparencia en el acceso, migración, ubicación, replicación, persistencia, fallos, etc. |
| Apertura | Ofrecer servicios bajo reglas estándares.  | Si se cumple. El sistema ofrece los servicios estándares de API Rest. |
| Escalabilidad | Capacidad de un sistema de escalar vertical u horizontalmente. | No se cumple. El sistema no se encuentra replicado ni particionado ya que se está trabajando con una sola base de datos. El sistema tampoco soporta un escalamiento horizontal ya que no se encuentra distribuido. Tampoco se está trabajando con caché. |


## Capacidad de respuesta


