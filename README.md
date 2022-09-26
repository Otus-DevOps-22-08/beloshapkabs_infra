# beloshapkabs_infra
beloshapkabs Infra repository

---

##Лекция №7

1. Поставили Packer
2. Создали сервисный аккаунт и получили ключ для использования Packer
3. Сконфигурировали builder и provisioners ubuntu16.json
4. Добавили в provisioners скрипты прошлой лекции для установки ruby и mongodb
5. Провалидировали получившуюся конфигурацию
6. В ходе билда образа выявили некоторые ошибки:
   1. Образ пытается создать новые подсети превышающие квоту аккаунта, исправляется добавлением
      уже созданной подсети в файл конфигураций "subnet_id": "id подсети".
   2. Ошибка из методички, добавили "use_ipv4_nat": "true"
   3. Ошибка насколько я понял связанная с загруженностью apt, вылечил обычным sleep в первом скрипте
7. Создали вм по образу, задеплоили приложение и проверили на исправность
8. Параметризовали шаблон, и проверили по новой, но уже с файлом variables:
   1. packer validate -var-file="variables.json" .\ubuntu16.json
   2. packer build -var-file="variables.json" .\ubuntu16.json
9. Создали конфигурацию immutable.json для reddit-full, добавили деплой и создание сервиса puma
10. Создали скрипт create-reddit-vm.sh для создания вм по образу


---

##Лекция №6

###Дополнительное задание
В качестве доп. задания используйте созданные ранее скрипты для
создания , который будет запускаться при создании инстанса.
```
yc compute instance create `
--name reddit-app `
--hostname reddit-app `
--memory=4 `
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB `
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 `
--metadata serial-port-enable=1 `
--metadata-from-file .\user-data=metadata.yml
```

Для проверки дз:
```
testapp_IP = 178.154.207.67
testapp_port = 9292
```

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
