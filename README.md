# Ozon
Ответы по заданиям выложите в публичный репозиторий (github, etc и пришлите ссылку)

Задание 1
Вы видите перед собой пример теста написанного на BDD.
Ваша задача расширить набор сценариев на тестирование простой формы авторизации.
При этом соблюсти стилистику приведённую в первом сценарии (включая теги).
Формат файла ответа .feature

```
@авторизация @авторизация.feature
Функция: Авторизация в приложении

@critical @positive
Сценарий: Я авторизуюсь с существующим логином и паролем
Пусть я открываю сайт "qa-testing.ru"
И заполняю форму логина валидными данными:
| элемент     | значение               |
| логин Email  | test1user@testmail.com |
| логин Пароль | "BAw23f5m"             |
И нажимаю "кнопку Войти"
Тогда я понимаю, что авторизован, так как вижу "профиль Пользователя"
```

Задание 2
На языке JS опишите 2 объекта автомобиля, объедините их в массив, затем отфильтруйте массив по одному из признаку. 

Задание 3
Найдите любое открытое API и напишите автотест на JS.
