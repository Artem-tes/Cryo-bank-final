<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ошибка создания карты</title>
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
        .error-icon {
            text-align: center;
            font-size: 100px;
            color: #ff4444; /* Красный цвет для ошибки */
            margin-bottom: 20px;
            animation: shake 0.5s infinite;
        }
        @keyframes shake {
            0%, 100% {
                transform: translateX(0);
            }
            25% {
                transform: translateX(-10px);
            }
            75% {
                transform: translateX(10px);
            }
        }
        .error-message {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            text-align: left;
        }
        .error-message p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
        }
        .error-message ul {
            margin: 10px 0;
            padding-left: 20px;
        }
        .error-message ul li {
            margin-bottom: 10px;
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
        Ошибка создания Cryo Карты
    </header>

    <div class="container">
        <div class="section">
            <div class="error-icon">❌</div>
            <h2>Ошибка при создании карты</h2>

            <!-- Сообщение об ошибке -->
            <div class="error-message">
                <p>К сожалению, на указанный email <strong><%= request.getParameter("email") %></strong> уже зарегистрирована карта Cryo банка. Мы не можем выпустить вторую карту на один и тот же email.</p>
                <p>Это ограничение связано с нашей политикой безопасности, чтобы предотвратить мошенничество и обеспечить защиту ваших средств.</p>

                <h3>Что вы можете сделать:</h3>
                <ul>
                    <li><strong>Используйте другой email:</strong> Если у вас есть другой email, попробуйте зарегистрировать карту с его помощью.</li>
                    <li><strong>Проверьте свои данные:</strong> Возможно, вы уже создали карту ранее. Проверьте свою почту на наличие писем от Cryo банка.</li>
                    <li><strong>Обратитесь в поддержку:</strong> Если вы считаете, что это ошибка, свяжитесь с нашей службой поддержки для уточнения деталей.</li>
                </ul>

                <h3>Как связаться с поддержкой:</h3>
                <p>Вы можете написать нам на <a href="mailto:support@cryobank.com">support@cryobank.com</a> или позвонить по номеру <strong>8-800-555-35-35</strong>. Наши специалисты работают круглосуточно и помогут решить вашу проблему.</p>

                <p>Спасибо за понимание! Мы ценим ваше доверие и всегда готовы помочь.</p>
            </div>

            <!-- Кнопка для возврата на страницу создания карты -->
            <div class="button-group">
                <button onclick="location.href='/account/create-card'">Вернуться назад</button>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2025 Cryo банк. Все права защищены.
    </footer>
</body>
</html>