<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Успешное инвестирование</title>
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
        .success-section {
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }
        .success-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .success-icon {
            color: #4CAF50;
            font-size: 72px;
            margin-bottom: 20px;
        }
        .success-section h2 {
            color: #f57c00;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .investment-details {
            text-align: left;
            margin: 30px auto;
            max-width: 500px;
        }
        .investment-detail {
            margin-bottom: 15px;
            font-size: 18px;
        }
        .detail-label {
            font-weight: bold;
            color: #f57c00;
        }
        .back-button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin-top: 20px;
        }
        .back-button:hover {
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
        Инвестиционная платформа Cryo
    </header>

    <div class="container">
        <div class="success-section">
            <div class="success-icon">✓</div>
            <h2>Инвестирование прошло успешно!</h2>

            <div class="investment-details">
                <div class="investment-detail">
                    <span class="detail-label">Компания:</span> ${name}
                </div>
                <div class="investment-detail">
                    <span class="detail-label">Сумма:</span> ${amount} ₽
                </div>
                <div class="investment-detail">
                    <span class="detail-label">Дата:</span> ${date}
                </div>
                <div class="investment-detail">
                    <span class="detail-label">Описание:</span> ${description}
                </div>
            </div>

            <button class="back-button" onclick="window.location.href='/invest/main-page'">Вернуться к инвестициям</button>
        </div>
    </div>

    <footer>
        © 2025 Cryo Bank. Все права защищены.
    </footer>
</body>
</html>