# language: ru

Функция: Вход на сайт

  Сценарий: неудачный вход
    Допустим пользователь открыл страницу входа
    Если он ввел неверные данные для входа
    То он должен видеть сообщение об ошибке

  Сценарий: удачный вход
    Допустим пользователь открыл страницу входа
      И пользователь имеет аккаунт
    Если он ввел верные данные для входа
    То он должен видеть страницу своего профиля 
      И он должен видеть сслыку выхода
