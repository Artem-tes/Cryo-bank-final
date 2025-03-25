<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ошибка инвестирования</title>
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
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
        }
        .error-section {
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }
        .error-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .error-icon {
            color: #f44336;
            font-size: 72px;
            margin-bottom: 20px;
        }
        .error-section h2 {
            color: #f57c00;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .error-message {
            font-size: 18px;
            margin: 30px auto;
            max-width: 500px;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }
        .action-button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .action-button:hover {
            background-color: #e65100;
            transform: scale(1.05);
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
        Инвестиционная платформа
        <button class="user-button">Личный кабинет</button>
    </header>

    <div class="container">
        <div class="error-section">
            <div class="error-icon">✕</div>
            <h2>Ошибка при инвестировании</h2>

            <div class="error-message">
                К сожалению, на вашем счете недостаточно средств для совершения этой операции.
                Пожалуйста, пополните баланс и попробуйте снова.
            </div>

            <div class="action-buttons">
                <button class="action-button" onclick="window.location.href='/account/put-money'">Пополнить баланс</button>
                <button class="action-button" onclick="window.location.href='/invest/main-page'">Вернуться к инвестициям</button>
            </div>
        </div>
    </div>

    <footer>
        © 2025 Cryo Bank Все права защищены.
    </footer>
</body>
</html>