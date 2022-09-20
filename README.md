# beloshapkabs_infra
beloshapkabs Infra repository

---

##Лекция №5

###Задание 1

Исследовать способ подключения к someinternalhost в одну
команду из вашего рабочего устройства, проверить работоспособность
найденного решения и внести его в README.md в вашем репозитории.

`ssh -i .\appuser -A appuser@51.250.86.180 ssh appuser@10.128.0.23`

Это рабочий вариант, но неудобный, отсутствует срока пути.

###Задание 2

Предложить вариант решения для подключения из консоли при помощи
команды вида ssh someinternalhost из локальной консоли рабочего
устройства, чтобы подключение выполнялось по алиасу
someinternalhost и внести его в README.md в вашем репозитории.

Создадим файлик config в репозитории .ssh.

Его содержимое:
```
Host someinternalhost
HostName 10.128.0.23
User appuser
IdentityFile ~/.ssh/appuser
ProxyCommand ssh -W %h:%p appuser@130.193.51.14
```
###Основное задание

Подключение для проверки:
```
bastion_IP = 130.193.51.14
someinternalhost_IP = 10.128.0.23
```
