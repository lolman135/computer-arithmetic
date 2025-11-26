# Guide 

## Привіт

Невеличка інструкція по локальному запуску.<br>Для запуску вам потрібен докер. 
Завантажити його можна за посиланнями: 
-  [Windows](https://docs.docker.com/desktop/setup/install/windows-install/);
-  [Linux](https://docs.docker.com/desktop/setup/install/linux/) (Це Docker Desktop, тому за посиланням додаткове пояснення різниці між Docker Desktop та Docker Engine, який іноді краще встановити)
-  [MacOs](https://docs.docker.com/desktop/setup/install/mac-install/)

Перейдіть до кореневого каталогу з файлом ```compose.yaml``` та виконайте команду:
```bash
docker-compose up
```
Ця команда запускає Docker, який збирає додаток з ```Dockerfile``` та запускає його на порту 8080.
Якщо ви запускаєте проект вдруге або частіше, і хочете перез проект через модифікацію вихідного коду,
запустіть його з прапорцем ```--build``` ось так:
```bash
docker-compose up --build
```
<br>

Далі перейдіть в браузер, та введіть у адресну строку [http://localhost:8080/](http://localhost:8080/)
<br>
Користуйтесь!