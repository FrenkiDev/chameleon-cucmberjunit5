# language: ru

# Тестовые данные:
  # $Имя_пользователя QATest
  # $Пароль_пользователя Pa$$W0rd
  # $доступная_пользователю_после_авторизации Главная

@FULL_REGRESS @P.AC-REGRESS @AUTHORIZATION
Функция: Сервис авторизации
  @ExternalId=24965
  @WorkItemId=24965
  @Link=https://testit.appline.ru/projects/24963/tests/24965
  Сценарий: Войти в Систему
    * выполнен сценарий "00. Авторизоваться в Доступе пользователем" из функционала "XX Общие шаги" с параметрами:
      | field               | value                  |
      | Имя_пользователя    | #{Имя_пользователя}    |
      | Пароль_пользователя | #{Пароль_пользователя} |

  @ExternalId=26326
  @WorkItemId=26326
  @Link=https://testit.appline.ru/projects/24963/tests/26326?isolatedSection=6ac50443-5107-4f80-9677-e2d831f8fa66
  Сценарий: 02 Проверка на ошибки при входе
    * страница "Подсказка" загружена
    * поле "Текст Ошибки" отсутствует

  @ExternalId=26327
  @WorkItemId=26327
  @Link=https://testit.appline.ru/projects/24963/tests/26327?isolatedSection=6ac50443-5107-4f80-9677-e2d831f8fa66
  Сценарий: 03 Проверка логотипа
    * страница "#{доступная_пользователю_после_авторизации}" загружена
    * выполнено наведение мыши на "Логотип"

  @QUIT_BROWSER_AFTER
  @ExternalId=26328
  @WorkItemId=26328
  @Link=https://testit.appline.ru/projects/24963/tests/26328?isolatedSection=6ac50443-5107-4f80-9677-e2d831f8fa66
  Сценарий: 04 Выйти из Системы
    * выполнен сценарий "04. Выйти из Системы c главной страницы" из функционала "XX Общие шаги"