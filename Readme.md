## cs-common-chat-bot cs1.6 bot

Бот для сервера кс 1.6, позволяющий отправлять сообщения из чатов ВК и ТГ в чат игрового сервера

### Возможности:
- `всем: *ваше сообщение*` в чатах ВК или ТГ - произойдет отправка в чат игрового сервера
- `сервер` отобразится список игроков на сервере
- `топ` отобразится ТОП15 игроков из статистики AES по количеству килов

### Требования:
- Наличие чатов в ТГ и ВК + админский чат в ВК с добавленными к ним ботами
- Установленный плагин [cs-common-chat-plugin](https://github.com/dgaponov99/cs-common-chat-plugin)
- Статистика AES, использующая MySQL

### Переменные окружения:
- `CS_SERVER_IP` IP игрового сервер (ex. 123.123.123.123)
- `CS_SERVER_PORT` Порт игрового сервера (ex. 27015)
- `RCON_PASS` RCON пароль игрового сервера
- `MYSQL_HOST` IP базы данных MySQL (ex. 123.123.123.123)
- `MYSQL_DATABASE` Наименование базы данных MySQL
- `MYSQL_USER` Имя пользователя базы данных MySQL
- `MYSQL_PASSWORD` Пароль пользователя базы данных MySQL
- `TG_TOKEN` Токен бота ТГ
- `TG_CHAT_ID` ID чата в ТГ (ex. -1001234567890)
- `VK_TOKEN` Токен бота ВК
- `VK_GROUP_ID` ID группы в ВК, от которой создан бот (ex. 201234567)
- `VK_PEER_ID` ID чата в ВК для бота (ex. 2000000001)

### docker-compose:
```yaml
version: "3.9"
services:
  my-cs-bot:
    image: dgaponov99/cs-common-chat-bot
    container_name: my-cs-bot
    restart: always
    environment:
      - CS_SERVER_IP=IP игрового сервер (ex. 123.123.123.123)
      - CS_SERVER_PORT=Порт игрового сервера (ex. 27015)
      - RCON_PASS=RCON пароль игрового сервера
      - MYSQL_HOST=IP базы данных MySQL (ex. 123.123.123.123)
      - MYSQL_DATABASE=Наименование базы данных MySQL
      - MYSQL_USER=Имя пользователя базы данных MySQL
      - MYSQL_PASSWORD=Пароль пользователя базы данных MySQL
      - TG_TOKEN=Токен бота ТГ
      - TG_CHAT_ID=ID чата в ТГ (ex. -1001234567890)
      - VK_TOKEN=Токен бота ВК
      - VK_GROUP_ID=ID группы в ВК, от которой создан бот (ex. 201234567)
      - VK_PEER_ID=ID чата в ВК для бота (ex. 2000000001)
```