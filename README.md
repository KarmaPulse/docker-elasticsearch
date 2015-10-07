# Dockerfile para generar imagenes con Elasticsearch instalado

## Uso

```
docker run -t -i -v -p 9200:9200 -p 9300:9300 karmapulse/elasticsearch
```

De esta forma creamos un contenedor que con elasticsearch y exponiendo los puertos de acceso, si deseamos agegar configuraciones especiales a elastic search debemos utilizar el volumen **/opt/elasticsearch-1.7.2/config**.
