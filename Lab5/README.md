## Makefile ##
1. Створюю папку my_app, в якій буде знаходитись проект. Створюю папку tests де будуть тести на перевірку працездатності проекту. Копіюю файли з репозиторію devops_course у відповідні папки мого репозиторію. Ознайомлююся із вмістом кожного з файлів. Переглядаю файл requirements.txt у папці проекту та тестах. Це файл містить залежності додатку, які необхідно встановити.
2. Виконую команди для перевірки працездатності проекту:
   -   pipenv --python 3.7
   -   pipenv install -r requirements.txt
   -   pipenv run python app.py
3. Для виправлення помилки redis.exceptions.ConnectionError, що виникла при спробі запустити додатку, встановлюю redis-server, виконавши команду sudo apt install redis-server. Роблю зміни у конфігураційному файлі /etc/redis/redis.conf. Пропипую у файлі /etc/hosts перенаправлення запитів redis на локальну адресу 127.0.0.1 redis;
4. Переконуюся, що сайт працює

![52](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/52.PNG)

5. Ініціалузовую середовище для тестів у іншій вкладці терміналу та запускаю їх командою:
  -   pipenv run pytest test_app.py --url http://localhost:5000 
  
6. Для того, щоб тести працювали створюю папку logs і лог-файл app.log у папці з додатком. Після цього тести проходять успішно.
7. Видаляю всі файли, що створились в процесі запуску (Pipfile, Pipfile.lock);
8. Перевіряю роботу сайту, перейшовши на кожну із сторінок:

![53](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/53.PNG)

![54](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/54.PNG)

9. Створюю два Dockerfile та Makefile, відповідно до зразка.
10. Ознайомлююсь з вмістом Dockerfile та Makefile, їх директивами.
    - STATES - змінна, що містить назву тегу.
    - REPO - змінна, що містить назву репозиторію.
    -  .PHONY - директива, що підставляє значення STATES у $(STATES).
    - $(STATES) - директива, призначена для білду Docker Image.
    -  run - для запуску сайту та redis.
    -  test-app - для запуску тестів.
    -  docker-prune - директива для очищення ресурсів Docker.
11. Створюю Docker імеджі для додатку та тестів:
    -  make .PHONY
12. Запускаю додаток та, відкривши новий термінал, запускаю тести:
    
    -  make run
    -  make test-app   
13.  Переконуюся, що тести пройшли успішно:

![55](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/55.PNG)

14. Перевіряю роботу кожної сторінки веб-сайту:

![56](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/56.PNG)

![57](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/57.PNG)

15. Зупиняю проект, та очищую ресурси Docker за допомогою команди:
    - make docker-prune
16. Створюю директиви у Makefile, для того, щоб зробити push до мого Docker репозиторію.

  -  [Docker репозиторій](https://hub.docker.com/repository/docker/1999993/gitlab5)  

17. За допомогою Makefile автоматизую процес видалення імеджів.

 ![58](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/58.PNG) 
 
 ## Docker-compose ##
1. Згідно зразка, створюю файл docker-compose.yml.В ньому створюються дві мережі: public і secret. Secret потрібна для комунікації внутрішніх ресурсів, а public для звичайних користувачів.
2. Перевіряю роботу docker-compose та запускаю його.
   - docker-compose version
   - docker-compose -p lab_5 up
3.  Перевіряю, як працює сайт. Для цього заходжу на адресу 127.0.0.1

  ![59](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/59.PNG)
  
  ![60](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/60.PNG)
  
4. Перевіряю наявність імейджів.Імейджі мають теги compose-app і compose-tests. Змінюю репозиторій на свій, та перезапускаю docker-compose, перед тим очистивши імейджі за допомогою директиви Makefile.
5. Очищую ресурси та роблю push до Docker репозиторію.
## Завдання ##
1. На мою думку, працювати з docker-compose значно зручніше, ніж з Makefile, адже docker-compose може запускати всю програму лише однією командою, що значно полегшує робту з великими проектами і економить час.
2. У папці з лабораторною № 4 створюю файл docker-compose.yml. Він створює імейджі для сторінок сайту і моніторингу, тобто автоматизує роботу, що була виконана в 4 лабораторній.
3. Запускаю його та перевіряю роботу сайту.
 
 ![61](https://github.com/IK-31-Kachor/star/blob/master/Lab5/image/61.PNG)
 
4.  