#Crear usuario y asignarle una clave (clave1)
sudo useradd -m -s /bin/bash p1c1_2024_u1
sudo passwd p1c1_2024_u1
#Crear el grupo y luego asignarlo al usuario creado
sudo groupadd p1c1_2024_g1
sudo usermod -aG p1c1_2024_g1 p1c1_2024_u1
#Asignar nuevo propietario y grupo a la carpeta "datos/" y cambiar los permisos
sudo chown -R p1c1_2024_u1:p1c1_2024_g1 datos/
sudo chmod -R 750 datos/
#Crear desde el usuario un archivo con salida "whoami" en la carpeta "datos/"
su - p1c1_2024_u1
clave1
cd /home/datos/
whoami > validar1.txt
cat validar1.txt
