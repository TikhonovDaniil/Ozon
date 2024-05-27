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

@critical @negative
Сценарий: Я авторизуюсь с несуществующим логином и паролем
Пусть я открываю сайт "qa-testing.ru"
И заполняю форму логина невалидными данными:
| элемент     | значение                 |
| логин Email  | nonexistinguser@test.com |
| логин Пароль | "wrongPassword"         |
И нажимаю "кнопку Войти"
Тогда я вижу сообщение об ошибке "Неверный логин или пароль"

@medium @negative
Сценарий: Я авторизуюсь с пустыми логином и паролем
Пусть я открываю сайт "qa-testing.ru"
И оставляю форму логина пустой:
| элемент     | значение |
| логин Email  |          |
| логин Пароль |          |
И нажимаю "кнопку Войти"
Тогда я вижу сообщение об ошибке "Заполните все обязательные поля"

@low @positive
Сценарий: Я восстанавливаю пароль
Пусть я открываю сайт "qa-testing.ru"
И нажимаю на ссылку "Забыли пароль?"
Тогда я вижу форму восстановления пароля
И я ввожу свой email "test1user@testmail.com"
И нажимаю "кнопку Восстановить"
Тогда я вижу сообщение "Инструкции по восстановлению пароля отправлены на ваш email"

@medium @negative
Сценарий: Я авторизуюсь с корректным логином и неправильным паролем
Пусть я открываю сайт "qa-testing.ru"
И заполняю форму логина с корректным логином, но неправильным паролем:
| элемент     | значение               |
| логин Email  | test1user@testmail.com |
| логин Пароль | "wrongPassword"       |
И нажимаю "кнопку Войти"
Тогда я вижу сообщение об ошибке "Неверный логин или пароль"

@low @positive
Сценарий: Я выхожу из аккаунта
Пусть я авторизован на сайте "qa-testing.ru"
Когда я нажимаю на ссылку "Выйти"
Тогда я вижу страницу авторизации, так как был успешно разлогинен

@medium @positive
Сценарий: Я вижу подсказки при заполнении формы авторизации
Пусть я открываю сайт "qa-testing.ru" 
Когда я навожу курсор на поля формы авторизации
Тогда я вижу подсказки для заполнения полей логина и пароля

@low @positive
Сценарий: Я вижу требования к паролю при регистрации
Пусть я открываю страницу регистрации на сайте "qa-testing.ru"
Когда я начинаю заполнять поле "Пароль"
Тогда я вижу требования к сложности пароля (длина, символы, регистр)

@medium @negative
Сценарий: Я пытаюсь авторизоваться с пустыми полями
Пусть я открываю сайт "qa-testing.ru"
Когда я оставляю поля логина и пароля пустыми
И нажимаю "кнопку Войти"
Тогда я вижу сообщение об ошибке "Заполните все поля"

@high @positive
Сценарий: Я успешно авторизуюсь в приложении
Пусть я открываю сайт "qa-testing.ru"
Когда я заполняю форму авторизации корректными логином и паролем:
| элемент    | значение               |
| логин Email | test1user@testmail.com |
| логин Пароль| "correctPassword"     |
И нажимаю "кнопку Войти"
Тогда я перехожу на главную страницу приложения

@medium @positive
Сценарий: Я использую функцию "Забыли пароль"
Пусть я открываю сайт "qa-testing.ru"
Когда я нажимаю на ссылку "Забыли пароль"
И ввожу свой зарегистрированный email-адрес
И нажимаю "кнопку Восстановить"
Тогда я вижу сообщение "На ваш email отправлена ссылка для восстановления пароля"

@high @positive
Сценарий: Я успешно меняю пароль
Пусть я открываю сайт "qa-testing.ru"
И нажимаю на ссылку "Забыли пароль"
Когда я ввожу свой email-адрес и нажимаю "кнопку Восстановить"
И перехожу по ссылке для восстановления пароля
И ввожу новый пароль
Тогда я могу авторизоваться в приложении с новым паролем