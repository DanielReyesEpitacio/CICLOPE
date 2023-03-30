import socket
import cv2
from funciones_deteccion import detectarContornos
host = '127.0.0.1'
port = 10000
counter = 0

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(("",10000))
server.listen(1)

while True:

    try:
        print("===============================================================")
        print("|                         CICLOPE IA                           |")
        print("===============================================================")
        print("|    -> Esperando conexiones")
        client, address = server.accept()
        message = client.recv(2048)
        urlPath = message.decode().replace('\\','/')
        print("|    -> Nueva conexión establecida")
        print("|    -> Mensaje recibido desde: " + str(address[0]) + "puerto: " + str(address[1]))
        #Llamada a la predccion de imagenes
        print("|    -> ***DATOS RECIBIDOS CON ÉXITO***")
        print("|    -> Generando predección")
        img = cv2.imread(str(urlPath))
        result = detectarContornos(img, counter)
        client.send(result.encode())
        client.close()
        print("|    -> Predicción generada con éxito")
        print("|    -> Enviando datos al host (°-°)┘")
        print("|    -> ")
        print("|    ->FINALIZANDO CONEXIÓN...")
        print("===============================================================\n\n")
    except:
        print("*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#Conexión fallida. Se ha interrumpido el proceso*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#")
    
    counter = counter +1


        


