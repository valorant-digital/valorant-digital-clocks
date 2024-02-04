##
## bundle the html files into an httpd image
##

FROM httpd

MAINTAINER Software Shinobi "troy@softwareshinobi.digital"

USER root

## set build environment variables

ENV webServerFileRoot /usr/local/apache2/htdocs/

##

RUN rm -rf $webServerFileRoot

COPY  --chown=www-data ./ $webServerFileRoot

RUN ls -lha $webServerFileRoot

## Expose ports

EXPOSE 80
