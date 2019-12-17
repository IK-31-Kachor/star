1. Ознайомлююся з документацією Docker.
2. Для перевірки чи докер встановлений і працює правильно на віртуальній машині запускаю перевірку версії, виведення допомоги та тестовий імедж: docker -v,docker -h,docker run docker/whalesay cowsay Docker is fun.
3. Перенаправляю результати цих команд у файл my_work.log та роблю коміт до репозиторію.
4. Створюю Docker імейдж з сайтом з попередньої роботи.
5. Щоб завантажити базовий Python імейдж з репозиторію, використовую наступні команди:
   -  docker pull python:3.7-slim
   -  docker images
   -  docker inspect python:3.7-slim 
6. Створюю власний репозиторій на Docker Hub. Для цього заходжу у власний аккаунт на Docker Hub, після чого переходжу у вкладку Repositories і далі натискаю кнопку Create new repository. Даю назву репозиторію gitlab4. 
7.   Виконую білд Docker імейджа та завантажую його до репозиторію, за допомогою команд:
       -   sudo docker build -t 1999993/gitlab4:django -f Dockerfile.site .
       -    sudo docker images
       -   sudo docker push 1999993/gitlab4:django
8. [Docker Hub](https://hub.docker.com/repository/docker/1999993/gitlab4)       

   