<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Компания не найдена | Cryo Bank</title>
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
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .header {
            background: var(--accent-color);
            color: #333;
            padding: 1.5rem 0;
            text-align: center;
            border-bottom: 1px solid var(--primary-color);
        }

        .header h1 {
            margin: 0;
            font-size: 2rem;
            font-weight: 600;
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        .error-card {
            background: white;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            padding: 2.5rem;
            max-width: 600px;
            width: 100%;
            text-align: center;
            border-left: 4px solid var(--secondary-color);
        }

        .error-icon {
            font-size: 4rem;
            color: var(--secondary-color);
            margin-bottom: 1.5rem;
        }

        .error-title {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .error-message {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 2rem;
            color: #555;
        }

        .action-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background-color: var(--secondary-color);
            color: #333;
            text-decoration: none;
            padding: 0.8rem 1.5rem;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            transition: all 0.2s ease;
            border: none;
            cursor: pointer;
            margin: 0.5rem;
        }

        .action-button:hover {
            background-color: var(--primary-color);
            transform: translateY(-2px);
        }

        .action-button i {
            margin-right: 0.5rem;
        }

        .footer {
            text-align: center;
            padding: 1.2rem;
            background: var(--accent-color);
            color: #666;
            font-size: 0.9rem;
            border-top: 1px solid var(--primary-color);
        }

        .steps {
            text-align: left;
            margin: 2rem auto;
            max-width: 400px;
        }

        .step {
            display: flex;
            margin-bottom: 1.2rem;
            align-items: flex-start;
        }

        .step-number {
            background-color: var(--secondary-color);
            color: #333;
            width: 24px;
            height: 24px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.8rem;
            font-weight: bold;
            margin-right: 1rem;
            flex-shrink: 0;
        }

        .step-text {
            flex: 1;
        }

        @media (max-width: 600px) {
            .error-card {
                padding: 1.5rem;
            }

            .error-title {
                font-size: 1.5rem;
            }

            .error-message {
                font-size: 1rem;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="header">
        <div class="container">
            <h1>Cryo Bank</h1>
        </div>
    </div>

    <div class="container">
        <div class="error-card">
            <div class="error-icon">
                <i class="fas fa-building"></i>
            </div>
            <h2 class="error-title">Компания не найдена</h2>
            <div class="error-message">
                <p>Чтобы просматривать и управлять компанией, вам необходимо сначала её создать.</p>
                <p>Вы можете легко зарегистрировать свою компанию в разделе аккаунта.</p>
            </div>

            <div class="steps">
                <div class="step">
                    <div class="step-number">1</div>
                    <div class="step-text">Перейдите в раздел "Аккаунт"</div>
                </div>
                <div class="step">
                    <div class="step-number">2</div>
                    <div class="step-text">Выберите "Создать компанию"</div>
                </div>
                <div class="step">
                    <div class="step-number">3</div>
                    <div class="step-text">Заполните информацию о вашей компании</div>
                </div>
                <div class="step">
                    <div class="step-number">4</div>
                    <div class="step-text">Начните управлять своим бизнесом</div>
                </div>
            </div>

            <a href="/account/create-company" class="action-button">
                <i class="fas fa-plus-circle"></i> Создать компанию
            </a>
            <a href="/account" class="action-button" style="background-color: #EEE; color: #333;">
                <i class="fas fa-user-circle"></i> Перейти в аккаунт
            </a>
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <p>© 2025 Cryo Bank. Все права защищены.</p>
            <p>Нужна помощь? Обратитесь в <a href="/support" style="color: var(--secondary-color);">службу поддержки</a></p>
        </div>
    </div>
</body>
</html>