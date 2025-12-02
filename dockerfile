##Descargamos una version concreta de UBUNU, a través del tag
FROM ubuntu
##label(etiqueta) para saber quien contruyo la imagen
LABEL Edsonmtz Formacion="edsonmargar@gmail.com"
##Actualizamos el sistema
RUN apt-get update
##Instalamos nginx
RUN apt-get install -y nginx
##Creamos un fichero index.html en el directorio por defecto de nginx
RUN echo 'Mi primer dockerfile, mi primer docker' > /var/www/html/index.html
##Arrancamos Ngnix a través de ENTRYPOINT para que no pueda ser ##modificado en la creacion del contenedor
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]
##Exponemos el puerto 80
EXPOSE 80