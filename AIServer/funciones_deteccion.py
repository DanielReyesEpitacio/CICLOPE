import cv2
import numpy as np


def detectarLineas(imagen):
    gray = cv2.cvtColor(imagen, cv2.COLOR_BGR2GRAY)
    #gaus = cv2.GaussianBlur(gray, (5,5), 0)
    edges = cv2.Canny(gray, 50,150, apertureSize= 3)
    lines = cv2.HoughLines(edges, 1, np.pi/180, 200)
    if lines is not None:
        print("Defecto")
        return 0
    else :
        print("Calidad")
        return 1
"""
    for line in lines:
        rho, theta = line[0]
        a = np.cos(theta)
        b= np.sin(theta)
        x0 = a*rho
        y0=b*rho
        x1=int(x0+1000*(-b))
        y1=int(y0 + 1000*(a))
        x2=int(x0-1000*(-b))
        y2=int(y0-1000*(a))
        cv2.line(imagen,(x1,y1), (x2,y2), (0,0,255), 1 , cv2.LINE_AA)
    cv2.imshow('Bordes en la imagen', edges)
    cv2.imshow('Detector de lineas', imagen)
    #cv2.imshow('Imagen en blanco y negro',gray)
"""

def detectarContornos(imagen, contador):
    gray = cv2.cvtColor(imagen, cv2.COLOR_BGR2GRAY)
    _, th = cv2.threshold(gray, 100,255,cv2.THRESH_BINARY)
    contornos1, hierachy1 = cv2.findContours(th, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    contornos2, hierachy2 = cv2.findContours(th, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    if len(contornos1) == 1 :
        return '1'
    else :
        imgPath = 'C:/xampp/htdocs/ciclope/images/img_def_' + str(contador) + '.jpg'
        cv2.drawContours(imagen, contornos1, -1,(0,255,0),3)
        cv2.imwrite(imgPath, imagen)
        return '0,'+imgPath
    #cv2.imshow('Imagen original', imagen)
    #cv2.imshow('Imagen con defectos encontrados', th)
    #cv2.imshow('Imagen en blanco y negro',gray)

def templateMatching(imagen):
    gray = cv2.cvtColor(imagen, cv2.COLOR_BGR2GRAY)
    template = cv2.imread('../RedMezclilla/entrenamiento/primera/img0.jpg',0)
    w,h = template.shape[::-1]
    match = cv2.matchTemplate(gray, template, cv2.TM_CCOEFF_NORMED)
    threshold = 0.9
    hubicacion = np.where(match >= threshold)
    for pt in zip(*hubicacion[::-1]):
       cv2.rectangle(imagen, pt, (pt[0]+w,pt[1]+h), (0,255,255),1)
    cv2.imshow('Defecto', template)
    cv2.imshow('Conincidencias', imagen)

def compareImages(image):
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    histogram = cv2.calcHist([gray], [0], None, [256], [0,256] )
    
    template = cv2.imread('../template_primera.jpg')
    gray_template = cv2.cvtColor(template, cv2.COLOR_BGR2GRAY)
    histogram_template = cv2.calcHist([gray_template], [0], None, [256], [0,256] )

    #Comparando similitudes

    c1 = 0
    i = 0 
    while i<len(histogram) and i<len(histogram_template):
        c1+=(histogram[i]-histogram_template[i])**2
        i+=1
    c1 = c1** (1/2)

    print("La similitud es:" + str(c1))

def printMatizImage(imagen):
    gray = cv2.cvtColor(imagen, cv2.COLOR_BGR2GRAY)
   
    for i,y in gray :
       print(gray[i][y])
