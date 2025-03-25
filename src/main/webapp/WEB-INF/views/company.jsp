<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${companyName} - Инвестиционная платформа</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
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
        .user-button {
            position: absolute;
            right: 20px;
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
        .user-button:hover {
            background-color: #e65100;
            transform: translateY(-50%) scale(1.05);
        }
        .container {
            max-width: 1200px;
            margin: 30px auto;
            padding: 0 20px;
        }
        .company-header {
            display: flex;
            align-items: center;
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
        .company-logo {
            width: 150px;
            height: 150px;
            background-color: #ffeb3b;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 50px;
            color: #f57c00;
            margin-right: 30px;
            flex-shrink: 0;
        }
        .company-title {
            flex-grow: 1;
        }
        .company-name {
            font-size: 32px;
            color: #f57c00;
            margin-bottom: 10px;
        }
        .company-slogan {
            font-size: 18px;
            color: #666;
            font-style: italic;
        }
        .invest-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            align-self: flex-end;
        }
        .invest-button:hover {
            background-color: #388E3C;
            transform: scale(1.05);
        }
        .company-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-bottom: 30px;
        }
        .detail-card {
            background-color: white;
            padding: 25px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .detail-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .detail-title {
            font-size: 20px;
            color: #f57c00;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid #ffeb3b;
        }
        .detail-content {
            font-size: 16px;
            line-height: 1.6;
        }
        .finance-stats {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .finance-stat {
            text-align: center;
            padding: 15px;
            border-radius: 15px;
            background-color: #f5f5f5;
            flex: 1;
            margin: 0 10px;
        }
        .stat-value {
            font-size: 24px;
            font-weight: bold;
            color: #f57c00;
            margin-bottom: 5px;
        }
        .stat-label {
            font-size: 14px;
            color: #666;
        }
        .founders-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .founder-card {
            background-color: #f5f5f5;
            padding: 15px;
            border-radius: 15px;
            text-align: center;
        }
        .founder-photo {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background-color: #ffeb3b;
            margin: 0 auto 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #f57c00;
            font-size: 30px;
        }
        .founder-name {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .founder-role {
            font-size: 14px;
            color: #666;
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
        .progress-container {
            width: 100%;
            background-color: #e0e0e0;
            border-radius: 10px;
            margin: 15px 0;
        }
        .progress-bar {
            height: 20px;
            background-color: #4CAF50;
            border-radius: 10px;
            text-align: center;
            line-height: 20px;
            color: white;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <header>
        Инвестиционная платформа

    </header>

    <div class="container">
        <div class="company-header">
            <div class="company-logo">
                ${companyName.substring(0, 1)}
            </div>
            <div class="company-title">
                <h1 class="company-name">${name}</h1>
                <p class="company-slogan">Успех впереди!</p>
            </div>
        </div>

        <div class="company-details">
            <div class="detail-card">
                <h2 class="detail-title">О компании</h2>
                <div class="detail-content">
                    <p><strong>Дата создания:</strong> ${date}</p>
                    <p><strong>Отрасль:</strong>Бизнесс</p>
                    <p><strong>Количество сотрудников:</strong>Не указано</p>
                    <p>${description}</p>
                </div>
            </div>

            <div class="detail-card">
                <h2 class="detail-title">Финансовые показатели</h2>
                <div class="detail-content">
                    <div class="finance-stats">
                        <div class="finance-stat">
                            <div class="stat-value">${initialCapital} ₽</div>
                            <div class="stat-label">Начальный капитал</div>
                        </div>
                        <div class="finance-stat">
                            <div class="stat-value">${currentCapital} ₽</div>
                            <div class="stat-label">Текущий капитал</div>
                        </div>
                    </div>

                    <h3>Прогресс финансирования</h3>
                    <div class="progress-container">
                        <div class="progress-bar" style="width: ${fundingProgress}%">70%</div>
                    </div>
                    <p>Собрано ${collectedAmount} ₽ из 1000000000 ₽</p>
                </div>
            </div>

            <div class="detail-card">
                <h2 class="detail-title">Учредители</h2>
                <div class="detail-content">
                    <div class="founders-list">
                        <div class="founder-card">
                            <div class="founder-photo">${founder3Name.substring(0, 1)}</div>
                            <div class="founder-name">${nameOwner}</div>
                            <div class="founder-role">Управляющий</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="detail-card">
                <h2 class="detail-title">Ключевые показатели</h2>
                <div class="detail-content">
                    <p><strong>Рентабельность:</strong> 76%</p>
                    <p><strong>Годовой рост:</strong>Не указано</p>
                    <p><strong>Доля рынка:</strong>Не указано</p>
                    <p><strong>Кредитный рейтинг:</strong>48%</p>
                </div>
            </div>
        </div>
        <div class="button-group">
                    <button onclick="location.href='/account'">Личный кабинет</button>
                </div>
    </div>

    <footer>
        © 2025 Инвестиционная платформа. Все права защищены.
    </footer>
</body>
</html>