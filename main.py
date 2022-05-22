"""Современный конвейер распознавания лиц состоит из 5 общих этапов: обнаружение, выравнивание, нормализация, представление и проверка. 
Deepface обрабатывает все эти общие этапы в фоновом режиме, вам не нужно приобретать глубокие знания обо всех процессах, стоящих за ним. 
Вы можете просто вызвать его функцию проверки, поиска или анализа с помощью одной строки кода."""

import cv2 # импортируем библиотеку opencv2
import pyautogui # импортируем библиотеку pyautogui
from deepface import DeepFace # импортируем бибилиотку deepface


face_cascade = cv2.CascadeClassifier(r'C:\Users\dell8\Desktop\new\haarcascade_frontalface_default.xml') # здесь надо прописать правильный путь до этого файла .xml

cap = cv2.VideoCapture(0) # обьявляем переменную cap для захвата видео

# обьявляем бесконечный цикл с True
while True:
    ret,frame = cap.read() # считываем кадры и читаем их с помощтю функции read()
    result = DeepFace.analyze(img_path = frame , actions=['emotion'], enforce_detection=False ) # создаем оббьект класса DeepFace и иницилизируем его

    gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY) #  cv2.cvtColor() Метод используется для преобразования изображения из одного цветового пространства в другое

    faces = face_cascade.detectMultiScale(gray,1.1,4) # создаем переменную faces, у face_cascade вызываем фукнция deletecmultisace, передаем туда 3 параметра

    for (x,y,w,h) in faces: # проходимся циклом внутри faces
        cv2.rectangle(frame,(x,y),(x+w,y+h),(255,0,0),3) # cv2.rectangle() Метод используется для рисования прямоугольника на любом изображении

    emotion = result["dominant_emotion"] # создаем переменную emotion передаем туда reslut с ключом dominant_emotion
    
    txt = str(emotion) # здесь создаем переменную, в нее кладем emotion, заранее конвертурем ее в str тип для надписи эмоции во время захвата видео

    cv2.putText(frame,txt,(50,50),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,255),3) # здесь выводим эмоции в кадре в str типе
    cv2.imshow('frame',frame) # показ фрейма, то есть это строка захватываем фрейм и показывает его каждую сек

    if cv2.waitKey(1) & 0xff == ord('q'): # если кнопка 'q' нажажа, выход из цикла и завершения работы программы
        break
    if cv2.waitKey(1) == ord('s'): # если кнопка 's' нажата, pyautogui делает скрин и сохроняет его именем эмоции в png формате
        pyautogui.screenshot().save('emotion.png')

cap.release() # инициализация cv2
cv2.destroyAllWindows() # при завершении работы программы, все активные окна закрываются
