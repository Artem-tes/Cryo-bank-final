<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перевод денег</title>
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
        .security-info {
            margin-top: 30px;
            text-align: center;
        }
        .security-info h3 {
            color: #f57c00;
            font-size: 24px;
            margin-bottom: 15px;
        }
        .security-info p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
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
        Перевод денег 💸
    </header>

    <div class="container">
        <div class="section">
            <h2>Перевод денег</h2>
            <form id="sendMoneyForm" action="/send-money" method="post">
                <div class="form-group">
                    <label for="recipientCard">Номер карты получателя</label>
                    <input type="text" id="recipientCard" name="recipientCard" placeholder="0000 0000" required>
                </div>
                <div class="form-group">
                    <label for="amount">Сумма перевода</label>
                    <input type="number" id="amount" name="amount" placeholder="Введите сумму" required>
                </div>
                <div class="form-group">
                    <label for="password">Пароль для подтверждения</label>
                    <input type="password" id="password" name="password" placeholder="Введите пароль" required>
                </div>
                <div class="button-group">
                    <button type="submit">Отправить деньги</button>
                </div>
            </form>

            <!-- Информация о безопасности -->
            <div class="security-info">
                <h3>Безопасность ваших средств 🛡️</h3>
                <p>
                    <span class="smiley">🔒</span> Мы используем современные технологии шифрования, чтобы защитить ваши данные и деньги.
                </p>
                <p>
                    <span class="smiley">👨‍💻</span> Все транзакции проходят проверку на мошенничество в режиме реального времени.
                </p>
                <p>
                    <span class="smiley">📞</span> Если у вас возникнут вопросы, наша служба поддержки всегда готова помочь.
                </p>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2023 Cryo банк. Все права защищены.
    </footer>
</body>
</html>