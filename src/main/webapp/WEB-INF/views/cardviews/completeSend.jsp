<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перевод успешно выполнен</title>
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
        .success-icon {
            text-align: center;
            font-size: 100px;
            color: #4caf50; /* Зеленый цвет для успеха */
            margin-bottom: 20px;
            animation: bounce 1s infinite;
        }
        @keyframes bounce {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }
        .transaction-details {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            text-align: center;
        }
        .transaction-details h3 {
            color: #f57c00;
            font-size: 22px;
            margin-bottom: 15px;
        }
        .transaction-details p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
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
        Перевод успешно выполнен
    </header>

    <div class="container">
        <div class="section">
            <div class="success-icon">🎉</div>
            <h2>Перевод выполнен успешно!</h2>

            <!-- Детали перевода -->
            <div class="transaction-details">
                <h3>Детали перевода</h3>
                <p><strong>Сумма перевода:</strong> ${amount} RUB</p>
                <p><strong>На карту:</strong> ${recCard}</p>
                <p><strong>Остаток на вашей карте:</strong> ${balance} RUB</p>
                <p><strong>Дата и время:</strong>${date}</p>
            </div>

            <!-- Кнопка для возврата в личный кабинет -->
            <div class="button-group">
                <button onclick="location.href='/account'">Вернуться в личный кабинет</button>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2023 Cryo банк. Все права защищены.
    </footer>
</body>
</html>