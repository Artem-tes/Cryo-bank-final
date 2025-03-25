<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.webapplication.backend.models.User" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная страница Cryo Bank</title>
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
            padding: 1.5rem 0;
            text-align: center;
            position: relative;
            border-bottom: 1px solid var(--primary-color);
            box-shadow: var(--card-shadow);
        }

        .header-title {
            margin: 0;
            font-size: 2rem;
            font-weight: 600;
            color: #333;
        }

        .nav-buttons {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 0.8rem;
            margin-top: 1.2rem;
            padding: 0 1rem;
        }

        .nav-button {
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
            display: inline-block;
        }

        .nav-button:hover {
            background-color: var(--primary-color);
            transform: translateY(-2px);
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
            transform: translateY(-5px);
        }

        .section h2 {
            color: #333;
            font-size: 1.8rem;
            margin-top: 0;
            margin-bottom: 1.5rem;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid #EEE;
        }

        .section p {
            font-size: 1.1rem;
            line-height: 1.6;
            color: #555;
        }

        .advantages {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-top: 1.5rem;
        }

        .advantage {
            background-color: white;
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease;
            border-top: 3px solid var(--secondary-color);
        }

        .advantage:hover {
            transform: translateY(-5px);
        }

        .advantage h3 {
            color: #333;
            font-size: 1.3rem;
            margin-top: 0;
            margin-bottom: 1rem;
        }

        .advantage p {
            font-size: 1rem;
            line-height: 1.5;
            color: #555;
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
            .header-title {
                font-size: 1.6rem;
                padding: 0 1rem;
            }

            .nav-buttons {
                gap: 0.5rem;
            }

            .nav-button {
                padding: 0.6rem 1rem;
                font-size: 0.9rem;
            }

            .user-button {
                position: static;
                transform: none;
                margin-top: 1rem;
                display: inline-block;
            }

            .section {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1 class="header-title">Добро пожаловать в Cryo Bank</h1>
        <div class="nav-buttons">
            <a href="/invest/main-page" class="nav-button">Инвестиции</a>
            <a href="/send-money" class="nav-button">Переводы</a>
            <a href="/company-main" class="nav-button">Компания</a>
            <a href="/support-bank" class="nav-button">Поддержка</a>
            <a href="/about-dev" class="nav-button">О разработчиках</a>
        </div>
        <% if (request.getSession().getAttribute("currentUser") != null) { %>
            <button class="user-button" onclick="location.href='/account'">
                <%= ((User) request.getSession().getAttribute("currentUser")).getFirstName() %>
            </button>
        <% } else { %>
            <button class="user-button" onclick="location.href='/login'">Войти</button>
        <% } %>
    </header>

    <div class="container">
        <div class="section">
            <h2>О нас</h2>
            <p>Cryo Bank — это современный финансовый институт, сочетающий в себе надежность традиционного банкинга и инновационные технологии. Мы создаем удобные и безопасные решения для управления вашими финансами.</p>
        </div>

        <div class="section">
            <h2>Наши преимущества</h2>
            <div class="advantages">
                <div class="advantage">
                    <h3>Конкурентные ставки</h3>
                    <p>Мы предлагаем одни из самых выгодных условий на рынке с процентными ставками от 5,5% годовых.</p>
                </div>
                <div class="advantage">
                    <h3>Цифровые решения</h3>
                    <p>Полный спектр банковских услуг доступен онлайн 24/7 через наше мобильное приложение и веб-платформу.</p>
                </div>
                <div class="advantage">
                    <h3>Финансовая безопасность</h3>
                    <p>Многоуровневая система защиты гарантирует сохранность ваших средств и персональных данных.</p>
                </div>
            </div>
        </div>

        <div class="section">
            <h2>Наше отличие</h2>
            <p>В отличие от традиционных банков, Cryo Bank сочетает персонализированный подход с цифровыми технологиями. Наша команда экспертов всегда готова предложить индивидуальные финансовые решения, соответствующие вашим потребностям и целям.</p>
            <p>Мы постоянно развиваемся, внедряя новые технологии, чтобы сделать банковское обслуживание еще более удобным и доступным для каждого клиента.</p>
        </div>
    </div>

    <footer>
        &copy; 2025 Cryo Bank. Все права защищены.<br>
        Лицензия ЦБ РФ №1234 от 01.01.2025
    </footer>
</body>
</html>