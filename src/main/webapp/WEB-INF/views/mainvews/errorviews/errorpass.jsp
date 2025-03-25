<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ошибка входа</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff3e0; /* Желтый фон */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .error-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .error-container h2 {
            color: #f57c00; /* Оранжевый цвет для заголовка */
            font-size: 24px;
            margin-bottom: 20px;
        }
        .error-container p {
            font-size: 18px;
            margin: 10px 0;
        }
        .error-container button {
            background-color: #f57c00; /* Оранжевая кнопка */
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }
        .error-container button:hover {
            background-color: #e65100; /* Темно-оранжевый при наведении */
        }
        .error-message {
            color: red; /* Красный цвет для сообщения об ошибке */
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h2>Ошибка входа</h2>
        <p>Пароль неправильный.</p>
        <p>Попробуйте восстановить аккаунт.</p>
        <button onclick="location.href='/recover'">Восстановить аккаунт</button>
        <button onclick="location.href='/'">На главную</button>
    </div>
</body>
</html>