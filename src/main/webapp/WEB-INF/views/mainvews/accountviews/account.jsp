<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.webapplication.backend.models.User" %>
<%@ page import="org.webapplication.backend.models.Card" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Личный кабинет | Cryo Bank</title>
    <style>
        :root {
            --primary-color: #FFEE93;
            --secondary-color: #F4D35E;
            --accent-color: #FEF9EF;
            --text-color: #333;
            --light-bg: #F8F7F2;
            --card-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--light-bg);
            color: var(--text-color);
            line-height: 1.6;
        }

        header {
            background: var(--accent-color);
            padding: 1.5rem;
            text-align: center;
            position: relative;
            border-bottom: 1px solid var(--primary-color);
            box-shadow: var(--card-shadow);
        }

        .header-title {
            margin: 0;
            font-size: 1.8rem;
            font-weight: 600;
            color: #333;
        }

        .menu-button {
            position: absolute;
            left: 1.5rem;
            top: 50%;
            transform: translateY(-50%);
            background-color: var(--secondary-color);
            color: #333;
            border: none;
            padding: 0.7rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-weight: 500;
        }

        .menu-button:hover {
            background-color: var(--primary-color);
            transform: translateY(-50%) scale(1.05);
        }

        .user-button {
            position: absolute;
            right: 1.5rem;
            top: 50%;
            transform: translateY(-50%);
            background-color: var(--secondary-color);
            color: #333;
            border: none;
            padding: 0.7rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-weight: 500;
        }

        .user-button:hover {
            background-color: var(--primary-color);
            transform: translateY(-50%) scale(1.05);
        }

        .container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1.5rem;
        }

        .section {
            margin-bottom: 2rem;
            background-color: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease;
            border-left: 4px solid var(--secondary-color);
        }

        .section:hover {
            transform: translateY(-3px);
        }

        .section h2 {
            color: #333;
            font-size: 1.6rem;
            margin-top: 0;
            margin-bottom: 1.5rem;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid #EEE;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .info-item {
            background-color: var(--accent-color);
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease;
        }

        .info-item:hover {
            transform: translateY(-5px);
        }

        .info-item h3 {
            color: #333;
            font-size: 1.2rem;
            margin-top: 0;
            margin-bottom: 1rem;
        }

        .info-item p {
            font-size: 1rem;
            color: #555;
            line-height: 1.5;
            margin: 0.5rem 0;
        }

        .card-detail {
            display: flex;
            justify-content: space-between;
        }

        .card-detail strong {
            font-weight: 600;
        }

        .button-group {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .action-button {
            background-color: var(--secondary-color);
            color: #333;
            border: none;
            padding: 0.8rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-weight: 500;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
        }

        .action-button:hover {
            background-color: var(--primary-color);
            transform: translateY(-2px);
        }

        .action-button i {
            margin-right: 0.5rem;
        }

        footer {
            text-align: center;
            padding: 1.5rem;
            background: var(--accent-color);
            color: #666;
            margin-top: 3rem;
            font-size: 0.9rem;
            border-top: 1px solid var(--primary-color);
        }

        @media (max-width: 768px) {
            .button-group {
                justify-content: center;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <button class="menu-button" onclick="location.href='/'">
            <i class="fas fa-arrow-left"></i> Назад
        </button>
        <h1 class="header-title">Личный кабинет</h1>
        <button class="user-button" onclick="location.href='/account/logout'">
            <i class="fas fa-sign-out-alt"></i> Выйти
        </button>
    </header>

    <div class="container">
        <!-- Секция с информацией о пользователе -->
        <div class="section">
            <h2><i class="fas fa-user-circle"></i> Ваши данные</h2>
            <div class="info-grid">
                <div class="info-item">
                    <h3><i class="fas fa-id-card"></i> Личная информация</h3>
                    <p><strong>Имя:</strong> ${currentUser.firstName}</p>
                    <p><strong>Фамилия:</strong> ${currentUser.lastName}</p>
                    <p><strong>Email:</strong> ${currentUser.email}</p>
                    <p><strong>Телефон:</strong> ${currentUser.phone}</p>
                </div>

                <div class="info-item">
                    <h3><i class="fas fa-credit-card"></i> Банковская карта</h3>
                    <%
                        Card card = (Card) request.getSession().getAttribute("card");
                        if (card == null) {
                    %>
                        <p>У вас нет активной карты</p>
                        <a href="/account/create-card" class="action-button" style="margin-top: 1rem;">
                            <i class="fas fa-plus-circle"></i> Оформить карту
                        </a>
                    <%
                        } else {
                    %>
                        <div class="card-detail">
                            <strong>Баланс:</strong>
                            <span><%= card.getBalance() %> RUB</span>
                        </div>
                        <div class="card-detail">
                            <strong>Номер карты:</strong>
                            <span> <%= card.getNumber() %></span>
                        </div>
                        <div class="card-detail">
                            <strong>Срок действия:</strong>
                            <span><%= card.getDate() %></span>
                        </div>
                        <div class="card-detail">
                            <strong>Тип:</strong>
                            <span>Банковская карта</span>
                        </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

        <!-- Секция с кнопками действий -->
        <div class="section">
            <h2><i class="fas fa-cog"></i> Управление счетом</h2>
            <div class="button-group">
                <a href="/account/put-money" class="action-button">
                    <i class="fas fa-wallet"></i> Пополнить счет
                </a>
                <a href="/account/check-transactions" class="action-button">
                    <i class="fas fa-exchange-alt"></i> История операций
                </a>
                <a href="/account/create-company" class="action-button">
                    <i class="fas fa-building"></i> Создать компанию
                </a>
                <a href="/account/settings" class="action-button">
                    <i class="fas fa-user-cog"></i> Настройки
                </a>
            </div>
        </div>

        <!-- Секция с полезной информацией -->
        <div class="section">
            <h2><i class="fas fa-lightbulb"></i> Полезные советы</h2>
            <ul style="list-style-type: none; padding-left: 0;">
                <li style="margin-bottom: 1rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-shield-alt" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Безопасность:</strong> Регулярно проверяйте историю операций и включайте уведомления о всех транзакциях.
                </li>
                <li style="margin-bottom: 1rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-key" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Пароли:</strong> Используйте уникальные сложные пароли и меняйте их каждые 3 месяца.
                </li>
            </ul>
        </div>
    </div>

    <footer>
        &copy; 2025 Cryo Bank. Все права защищены.<br>
        <small>Лицензия ЦБ РФ №111345</small>
    </footer>
</body>
</html>