#Creamos el nuevo usuario y le asignamos su clave (clave1)
sudo useradd -m -s /bin/bash p1c1_2024_u2
sudo passwd p1c1_2024_u2
#Creamos el nuevo grupo
sudo groupadd p1c1_2024_Todos
#Agregamos ambos usuarios al grupo
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u2
#Modificamos el grupo propietario y luego los permisos
sudo chown -R :p1c1_2024_Todos datos/
sudo chmod -R 714 datos/
#Entramos al segundu usuario para realizar el id
su - p1c1_2024_u2
clave1
cd /home/datos/
#Lo modificamos
id >> validar1.txt
cat validar1.txt
#Verificamos datos y permisos
ls -l /datos
cat datos/validar1.txt
