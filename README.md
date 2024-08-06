# Sauda

Sauda is a Spring Boot application for creating and managing advertisements, similar to OLX. This application includes features such as user registration, authorization, ad creation, an admin panel for banning and unbanning users, and photo uploading.

## Features

- **User Registration**: Users can register to create an account.
- **User Authorization**: Registered users can log in to access the application.
- **Ad Creation**: Users can create and manage their own advertisements.
- **Admin Panel**: Admins have the ability to ban and unban users.
- **Photo Uploading**: Users can upload photos for their advertisements.

## Requirements

- Java 11 or higher
- Maven 3.6.3 or higher
- MySQL database

## Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/aloneen/sauda.git
    cd sauda
    ```

2. **Configure the database**:
    Update the `application.properties` file with your MySQL database configuration:
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/sauda
    spring.datasource.username=yourusername
    spring.datasource.password=yourpassword
    spring.jpa.hibernate.ddl-auto=update
    ```

3. **Build the application**:
    ```sh
    mvn clean install
    ```

4. **Run the application**:
    ```sh
    mvn spring-boot:run
    ```

## Usage

1. Open your browser and go to `http://localhost:8080`.
2. Register a new user or log in with existing credentials.
3. Use the interface to create advertisements, manage your account, and, if you are an admin, ban or unban users.

## Contributing

Feel free to submit issues and pull requests. For major changes, please open an issue first to discuss what you would like to change.
















# Sauda

Sauda - это приложение на Spring Boot для создания и управления объявлениями, аналогичное OLX. Это приложение включает в себя функции регистрации пользователей, авторизации, создания объявлений, панели администратора для блокировки и разблокировки пользователей, а также загрузки фотографий.

## Функции

- **Регистрация пользователей**: Пользователи могут зарегистрироваться для создания аккаунта.
- **Авторизация пользователей**: Зарегистрированные пользователи могут войти в систему для доступа к приложению.
- **Создание объявлений**: Пользователи могут создавать и управлять своими объявлениями.
- **Панель администратора**: Администраторы могут блокировать и разблокировать пользователей.
- **Загрузка фотографий**: Пользователи могут загружать фотографии для своих объявлений.

## Требования

- Java 11 или выше
- Maven 3.6.3 или выше
- База данных MySQL

## Установка

1. **Клонируйте репозиторий**:
    ```sh
    git clone https://github.com/aloneen/sauda.git
    cd sauda
    ```

2. **Настройте базу данных**:
    Обновите файл `application.properties` с конфигурацией вашей базы данных MySQL:
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/sauda
    spring.datasource.username=yourusername
    spring.datasource.password=yourpassword
    spring.jpa.hibernate.ddl-auto=update
    ```

3. **Соберите приложение**:
    ```sh
    mvn clean install
    ```

4. **Запустите приложение**:
    ```sh
    mvn spring-boot:run
    ```

## Использование

1. Откройте браузер и перейдите по адресу `http://localhost:8080`.
2. Зарегистрируйтесь или войдите в систему с существующими учетными данными.
3. Используйте интерфейс для создания объявлений, управления своим аккаунтом и, если вы администратор, блокировки или разблокировки пользователей.

## Вклад

Не стесняйтесь отправлять вопросы и запросы на добавление изменений. Для крупных изменений, пожалуйста, сначала откройте вопрос для обсуждения того, что вы хотите изменить.


