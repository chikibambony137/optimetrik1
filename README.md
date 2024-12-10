## Установка и запуск приложения

### Шаг 1: Клонирование репозитория

Скопируйте проект к себе на компьютер:

```bash
git clone https://github.com/chikibambony137/optimetrik1
```

### Шаг 2: Установка зависимостей

#### Серверная часть (Python/FastAPI)

Установите зависимости для серверной части:

```bash
pip install -r requirements.txt
```

#### Клиентская часть (React.js)

Перейдите в директорию клиентской части и установите необходимые пакеты:

```bash
cd my-app
npm install
```

Настройте подключение к базе данных в файле конфигурации сервера (`database.py`):

```python
DB_URL = 'postgresql://username:password@localhost/your_database_name'
```

### Шаг 4: Запуск приложения

#### Серверная часть

Запустите серверную часть:

```bash
uvicorn routes:app --reload
```

#### Клиентская часть

Запустите клиентскую часть:

```bash
cd my-app
npm start
```

Теперь ваше приложение доступно по адресу http://localhost:3000.
