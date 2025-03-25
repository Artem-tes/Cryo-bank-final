<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Доступ ограничен | Cryo Bank</title>
    <style>
        :root {
            --primary-color: #FFEE93;
            --secondary-color: #F4D35E;
            --accent-color: #FEF9EF;
            --text-color: #333;
            --light-bg: #F8F7F2;
            --card-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            --error-color: #FF4444;
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
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1.5rem;
        }

        .section {
            background-color: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease;
            border-left: 4px solid var(--error-color);
            margin-bottom: 2rem;
            text-align: center;
        }

        .section:hover {
            transform: translateY(-3px);
        }

        .section h2 {
            color: var(--error-color);
            font-size: 1.6rem;
            margin-top: 0;
            margin-bottom: 1.5rem;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid #EEE;
        }

        .error-icon {
            font-size: 4rem;
            color: var(--error-color);
            margin-bottom: 1.5rem;
            display: block;
        }

        .section p {
            font-size: 1.1rem;
            line-height: 1.6;
            color: #555;
            max-width: 800px;
            margin: 0 auto 1.5rem;
        }

        .action-button {
            background-color: var(--secondary-color);
            color: #333;
            border: none;
            padding: 0.8rem 1.8rem;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-weight: 500;
            margin: 1rem 0.5rem;
            display: inline-block;
        }

        .action-button:hover {
            background-color: var(--primary-color);
            transform: scale(1.05);
        }

        .action-button i {
            margin-right: 0.5rem;
        }

        .info-box {
            background-color: var(--accent-color);
            padding: 1.5rem;
            border-radius: 8px;
            margin: 2rem auto;
            max-width: 700px;
            text-align: left;
        }

        .info-box h3 {
            margin-top: 0;
            color: #333;
            font-size: 1.2rem;
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
        <h1 class="header-title">История транзакций</h1>
    </header>

    <div class="container">
        <div class="section">
            <i class="fas fa-exclamation-triangle error-icon"></i>
            <h2>Доступ к истории транзакций ограничен</h2>
            <p>К сожалению, вы не можете просматривать историю транзакций, так как у вас нет привязанных банковских карт.</p>

            <div class="info-box">
                <h3><i class="fas fa-info-circle"></i> Почему так происходит?</h3>
                <p>История транзакций привязана к вашим банковским картам. Без привязанной карты система не может отображать ваши финансовые операции. Это сделано для вашей безопасности и соответствия банковским нормам.</p>

                <h3><i class="fas fa-check-circle"></i> Как это исправить?</h3>
                <p>1. Перейдите в раздел "Мои карты" и добавьте свою банковскую карту.<br>
                2. После проверки карты история транзакций станет доступна.<br>
                3. Если у вас возникли проблемы, обратитесь в службу поддержки.</p>
            </div>

            <button class="action-button" onclick="location.href='/account/create-card'">
                <i class="fas fa-credit-card"></i> Перейти к привязке карты
            </button>

            <button class="action-button" onclick="location.href='/support'">
                <i class="fas fa-headset"></i> Служба поддержки
            </button>
        </div>
    </div>

    <footer>
        &copy; 2023 Cryo Bank. Все права защищены.<br>
        <small>Лицензия ЦБ РФ №11345</small>
    </footer>
</body>
</html>