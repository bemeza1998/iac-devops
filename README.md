# Proyecto iac-devops

En el presente proyecto, se codificó una plantilla de Terraform para realizar el despliegue de infraestructura mediante código (IaC) en Azure, se tienen dos ambientes:

- Desarrollo
- Producción

# Archivos del proyecto

## main.tf

Archivo principal donde se define la infraestructura a desplegar. Los recursos definidos son:

- Storage account: utilizado para almacenar el estado de Terraform en cada uno de los ambientes
- Storage container: contenedor donde se almacena el archivo terraform.state
- Service plan: definición del plan de app service donde se desplegará la aplicación. Se definieron 2 instancias para alta disponibilidad.
- App service (Linux): Aplicación web donde se depliga el contenedor de Docker con la aplicación devops test.

## vars.tf

Definición de variables para gestionar la infraestructura en base al ambiente.

## providers.tf

Definición de proveedor de nube a utilizar, en este caso, Azure. Adicionalmente se define el backend por ambiente para almacenar el estado de la infraestructura.

# Capturas infraestructura funcional en Azure

Grupos de recursos desplegados por ambiente

![RG Azure](./imgs/azure_1.jpg)

Recursos desplegados (Storage account, App service, Serice plan)

![Recursos](./imgs/azure_2.jpg)

Service plan funcional con dos instancias

![Service plan](./imgs/azure_3.jpg)

App service ejecutando la aplicación contenedorizada

![App service](./imgs/azure_4.jpg)