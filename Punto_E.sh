#Creamos el directorio donde se guardara la informacion
sudo mkdir -p Punto_E
#Luego seleccionamos con grep la informacion que deseamos que unicamente se guarde en el texto
grep "MemTotal" /proc/meminfo > Punto_E/Filtro_basico.txt
grep "model name" /proc/cpuinfo >> Punto_E/Filtro_basico.txt
