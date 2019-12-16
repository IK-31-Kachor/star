1. Створюю папку з назвою лабораторної роботи у власному репозиторію. У папці ініціалізовую середовище pipenv командою pipenv -python 3.7 та встановлюю необхідні пакети за допомогою команди pipenv install django.
2. За допомогою Django Framework створюю заготовку Template командою pipenv run django-admin startproject my_site.
3. За допомогою команди "pipenv run python manage.py runserver" запускаю сервер, та переходжу за посиланням, що з'явилось у консолі.

![31](https://github.com/IK-31-Kachor/star/blob/master/Lab3/image/31.PNG)

4. Зупиняю сервер виконавши переривання Ctrl+C. Роблю коміт базового темплейту сайту.
5. За допомогою команди "pipenv run python manage.py startapp page" створюю темплейт додатку page.
6. Використовуючи можливості IntelliJ створюю папку main/templates/, файл main.html у цій папці та файл urls.py. Роблю коміт з даними файлами.
7. 