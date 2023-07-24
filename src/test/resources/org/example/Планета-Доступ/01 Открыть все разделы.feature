# language: ru

# Тестовые данные:

@TEST_1
Функция: 01 Открыть все разделы


  Сценарий: 00. Подготовка
    * выполнен сценарий "00.2 Авторизоваться админом и открыть Доступ" из функционала "XX Общие шаги"

  @ExternalId=25137
  @WorkItemId=25137
  @Link=https://testit.appline.ru/projects/24963/tests/25137?isolatedSection=8e1a5c6a-e520-414c-a210-724b55a2747e
  Структура сценария: 01. Открыть раздел Доступа и проверить контент
    * страница "Доступ" загружена
    * выполнено нажатие на "Меню{title=><Наименование>}"
    * выполнен сценарий "02. Проверка названия наименования вкладки" из функционала "XX Общие шаги" с параметрами:
      | field     | value         |
      | Заголовок | <Имя Вкладки> |
    #* страница "<Наименование>" загружена
    #* поле "<Контент>" присутствует
    Примеры:
      | Наименование     | Контент | Имя Вкладки      |
      | Пространство     |         | Пространство ИБС |
      | Клиенты          |         | Клиенты          |
      | Области действия |         | Области действия |
      | Провайдеры       |         | Провайдеры       |
      | Хранилище        |         | Хранилища        |
      | Пользователи     |         | Пользователи     |
      | Группы           |         | Группы           |
      | Сессии           |         | Сессии           |
      | Объекты системы  |         | Объекты системы  |
      | Роли             |         | Роли             |
      | Ограничения      |         | Ограничения      |

  @QUIT_BROWSER_AFTER
  Сценарий: 02 Выйти из Системы
    * выполнен сценарий "04. Выйти из Системы c главной страницы" из функционала "XX Общие шаги"