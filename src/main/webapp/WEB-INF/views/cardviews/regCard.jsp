<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Выпуск Cryo Карты</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            color: #333;
        }
        header {
            background-color: #ffeb3b;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            position: relative;
            border-radius: 20px 20px 0 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        header:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .menu-button {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .menu-button:hover {
            background-color: #e65100;
            transform: translateY(-50%) scale(1.05);
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .section {
            margin-bottom: 40px;
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .section:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .section h2 {
            color: #f57c00;
            font-size: 28px;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-size: 16px;
            margin-bottom: 5px;
            color: #555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 10px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .form-group input:focus {
            border-color: #f57c00;
            box-shadow: 0 0 8px rgba(245, 124, 0, 0.3);
            outline: none;
        }
        .button-group {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .button-group button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .button-group button:hover {
            background-color: #e65100;
            transform: scale(1.05);
        }
        .advantages {
            margin-top: 30px;
            text-align: center;
        }
        .advantages h3 {
            color: #f57c00;
            font-size: 24px;
            margin-bottom: 15px;
        }
        .advantages ul {
            list-style-type: none;
            padding: 0;
        }
        .advantages ul li {
            font-size: 18px;
            margin-bottom: 10px;
            color: #555;
        }
        .smiley {
            font-size: 24px;
            margin-right: 10px;
        }
        footer {
            background-color: #ffeb3b;
            padding: 20px;
            text-align: center;
            font-size: 16px;
            margin-top: 40px;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        footer:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <header>
        <button class="menu-button" onclick="location.href='/'">Меню</button>
        Выпуск Cryo Карты
    </header>

    <div class="container">
        <div class="section">
            <h2>Заполните данные для выпуска карты</h2>
            <form id="createCardForm" action="/account/create-card" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Пароль для подтверждения</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="button-group">
                    <button type="submit">Выпустить карту</button>
                </div>
            </form>

            <!-- Преимущества Cryo Карты -->
            <div class="advantages">
                <h3>Почему стоит выбрать Cryo Карту? 🚀</h3>
                <ul>
                    <li><span class="smiley">💳</span> <strong>Универсальность:</strong> Используйте карту для оплаты в магазинах, онлайн и за границей.</li>
                    <li><span class="smiley">🛡️</span> <strong>Безопасность:</strong> Защита от мошенничества и круглосуточная поддержка.</li>
                    <li><span class="smiley">💸</span> <strong>Кэшбэк:</strong> Получайте до 5% кэшбэка за покупки.</li>
                    <li><span class="smiley">🌍</span> <strong>Международное использование:</strong> Оплачивайте покупки в любой валюте без скрытых комиссий.</li>
                    <li><span class="smiley">📱</span> <strong>Мобильное управление:</strong> Управляйте картой через наше удобное приложение.</li>
                </ul>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2025 Cryo банк. Все права защищены.
    </footer>
</body>
</html>