<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание компании | Cryo Bank</title>
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

        .container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 0 1.5rem;
        }

        .form-card {
            background-color: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease;
            border-left: 4px solid var(--secondary-color);
        }

        .form-card:hover {
            transform: translateY(-3px);
        }

        .form-card h2 {
            color: #333;
            font-size: 1.6rem;
            margin-top: 0;
            margin-bottom: 1.5rem;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid #EEE;
            text-align: center;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            font-size: 1rem;
            margin-bottom: 0.5rem;
            color: #555;
            font-weight: 500;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.8rem;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 3px rgba(244, 211, 94, 0.2);
            outline: none;
        }

        .form-group textarea {
            min-height: 120px;
            resize: vertical;
        }

        .submit-button {
            background-color: var(--secondary-color);
            color: #333;
            border: none;
            padding: 0.8rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 8px;
            transition: all 0.3s ease;
            font-weight: 500;
            width: 100%;
            margin-top: 1rem;
        }

        .submit-button:hover {
            background-color: var(--primary-color);
        }

        .info-section {
            margin-top: 2rem;
            padding: 1.5rem;
            background-color: var(--accent-color);
            border-radius: 8px;
        }

        .info-section h3 {
            color: #333;
            font-size: 1.2rem;
            margin-top: 0;
        }

        .info-section ul {
            padding-left: 1.5rem;
            color: #555;
        }

        .info-section li {
            margin-bottom: 0.5rem;
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
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <button class="menu-button" onclick="location.href='/'">
            <i class="fas fa-arrow-left"></i> Назад
        </button>
        <h1 class="header-title">Создание компании</h1>
    </header>

    <div class="container">
        <div class="form-card">
            <h2><i class="fas fa-building"></i> Регистрационные данные</h2>

            <form id="createCompanyForm" action="/account/create-company" method="post">
                <div class="form-group">
                    <label for="companyName"><i class="fas fa-signature"></i> Название компании</label>
                    <input type="text" id="companyName" name="companyName" placeholder="Введите название компании" required>
                </div>

                <div class="form-group">
                    <label for="companyDescription"><i class="fas fa-align-left"></i> Описание деятельности</label>
                    <textarea id="companyDescription" name="companyDescription"
                              placeholder="Опишите сферу деятельности вашей компании" required></textarea>
                </div>

                <div class="form-group">
                    <label for="initialCapital"><i class="fas fa-coins"></i> Начальный капитал (мин. 100,000 RUB)</label>
                    <input type="number" id="initialCapital" name="initialCapital"
                           placeholder="Введите сумму" min="100000" required>
                </div>

                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Пароль для подтверждения</label>
                    <input type="password" id="password" name="password" placeholder="Введите ваш пароль" required>
                </div>

                <button type="submit" class="submit-button">
                    <i class="fas fa-check-circle"></i> Зарегистрировать компанию
                </button>
            </form>

            <div class="info-section">
                <h3><i class="fas fa-info-circle"></i> Важная информация:</h3>
                <ul>
                    <li>Минимальный начальный капитал для регистрации компании - 100,000 RUB</li>
                    <li>Все финансовые операции компании будут привязаны к вашему аккаунту</li>
                    <li>Вы сможете привлекать инвестиции после проверки компании модератором</li>
                    <li>Комиссия за обслуживание компании составляет 1% от оборота</li>
                </ul>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2025 Cryo Bank. Все права защищены.<br>
        <small>Лицензия ЦБ РФ №111556</small>
    </footer>
</body>
</html>