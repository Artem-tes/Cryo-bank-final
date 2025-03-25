<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Доступ запрещен | Инвестиционная платформа</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }
        .error-card {
            background-color: white;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            padding: 40px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .error-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }
        .error-icon {
            font-size: 80px;
            color: #f44336;
            margin-bottom: 20px;
        }
        .error-title {
            font-size: 28px;
            color: #f57c00;
            margin-bottom: 15px;
        }
        .error-message {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 30px;
            color: #555;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        .action-button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 50px;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            min-width: 200px;
        }
        .action-button:hover {
            background-color: #e65100;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .action-button.secondary {
            background-color: #2196F3;
        }
        .action-button.secondary:hover {
            background-color: #1976D2;
        }
        footer {
            background-color: #ffeb3b;
            padding: 20px;
            text-align: center;
            font-size: 16px;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        footer:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .company-icon {
            font-size: 60px;
            color: #f57c00;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <header>
        Инвестиционная платформа
    </header>

    <div class="container">
        <div class="error-card">
            <div class="error-icon">🔒</div>
            <h1 class="error-title">Доступ к информации ограничен</h1>

            <div class="error-message">
                <p>Вы не можете просмотреть информацию о компании, так как:</p>
                <p>• Вы не авторизованы на платформе</p>
                <p>• Или у вас нет прав доступа к этой компании</p>
                <p>• Или компания не существует</p>
            </div>

            <div class="company-icon">🏢</div>

            <div class="action-buttons">
                <a href="/registration" class="action-button secondary">Зарегистрироваться</a>
                <a href="/login" class="action-button">Войти в аккаунт</a>
                <a href="/account/create-company" class="action-button">Создать компанию</a>
            </div>
        </div>
    </div>

    <footer>
        © 2025 Cryo Bank Все права защищены.
    </footer>
</body>
</html>