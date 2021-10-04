# __Модуль для GameCMS__

![MySenPai](https://pa1.narvii.com/6862/6098ddd3be86e6253a9a2174796bf3fba9c06867r1-500-260_hq.gif)

## Поддерживающая игра CS 1.6

# F.A.Q
 ## __Что делает данный модуль?__

- ### Данный модуль позволяет вам купить скин на сайте, так же купленный скин будет выдан в игру (по типу персонального скина :D )  Данный модуль работает GameCMS UNI и AWS Code

# Требование:

## GameServer:
- AMXMODX

## Web-Хост:
- PHP 7.0 - PHP 7.2

***

# Установка
- #### Распокавать `.rar` или `.zip ` к себе на `WEB-Хост` соблюдая иерархию католога.
- #### Открыть папкуперейти `skins_store/settings`, открыть файл `install.sql`, все содержимое скапировать в `Базу данных` (где лежить сам движок GameCMS)
- #### Настроить модуль в `АЦ` - Админ Центр.

***

#### В папке `skins_store/uploads/documentation.zip/documentation/Counter-Strike 1.6/cstrike/addons/amxmodx` все файлы залить к себе на сервер соблюдая иерархию католога

#### В папке `addons/amxmodx/configs/` вписать модели для скачки, и естествено эти модели должы быть загружены на ваш сервер.

#### В папке `addons/amxmodx/configs/gamecms_skins.cfg` вписать подключение к базе сайта (база данных именно сайта ваша `GameCMS`)
```c
gamecms_hostname		"host"				// Адрес базы данных
gamecms_username		"login"				// Имя пользователя
gamecms_password		"password"				// Пароль пользователя
gamecms_database		"database_name"				// Наименование базы данных
```

***

![MySenPai](https://pa1.narvii.com/8008/5ff3a5128bf7a511810414eecce8018a7b0a52cer1-500-282_hq.gif)
