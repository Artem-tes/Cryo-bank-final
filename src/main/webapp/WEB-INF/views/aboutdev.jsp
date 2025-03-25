<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>О разработчиках | Cryo Bank</title>
    <style>
        :root {
            --primary-color: #FFEE93; /* мягкий желтый */
            --secondary-color: #F4D35E; /* приглушенный золотой */
            --accent-color: #FEF9EF; /* кремово-белый */
            --text-color: #333;
            --light-bg: #F8F7F2; /* очень светлый крем */
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

        .header {
            background: var(--accent-color);
            color: #333;
            padding: 2rem 0;
            text-align: center;
            margin-bottom: 2rem;
            border-bottom: 1px solid var(--primary-color);
        }

        .header h1 {
            margin: 0;
            font-size: 2.2rem;
            font-weight: 600;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .developer-card {
            background: white;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            padding: 2rem;
            margin-bottom: 2rem;
            transition: transform 0.3s ease;
            border-left: 4px solid var(--secondary-color);
        }

        .developer-card:hover {
            transform: translateY(-3px);
        }

        .developer-header {
            display: flex;
            align-items: center;
            margin-bottom: 1.5rem;
        }

        .developer-avatar {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            background-color: var(--accent-color);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            color: #333;
            margin-right: 1.5rem;
            font-weight: bold;
            border: 2px solid var(--primary-color);
        }

        .developer-info h2 {
            color: #333;
            margin: 0 0 0.3rem 0;
            font-size: 1.5rem;
        }

        .developer-title {
            color: #666;
            margin: 0;
            font-size: 0.95rem;
        }

        .tech-stack {
            margin: 1.5rem 0;
        }

        .tech-stack h3 {
            color: #555;
            margin-bottom: 0.8rem;
            font-size: 1.1rem;
            font-weight: 500;
        }

        .tech-badges {
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
        }

        .tech-badge {
            background-color: var(--accent-color);
            color: #333;
            padding: 0.3rem 0.8rem;
            border-radius: 16px;
            font-size: 0.85rem;
            border: 1px solid #EEE;
        }

        .contacts {
            margin-top: 1.5rem;
        }

        .contacts h3 {
            color: #555;
            margin-bottom: 0.8rem;
            font-size: 1.1rem;
            font-weight: 500;
        }

        .contact-link {
            display: inline-flex;
            align-items: center;
            color: #333;
            text-decoration: none;
            margin-right: 1rem;
            padding: 0.5rem 0.8rem;
            border-radius: 6px;
            transition: all 0.2s ease;
            background-color: var(--accent-color);
            font-size: 0.9rem;
        }

        .contact-link:hover {
            background-color: var(--primary-color);
            text-decoration: none;
        }

        .contact-icon {
            margin-right: 0.5rem;
            font-size: 1rem;
            color: var(--secondary-color);
        }

        .about-project {
            background: white;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            padding: 1.8rem;
            margin-bottom: 2rem;
            border-left: 4px solid var(--secondary-color);
        }

        .about-project h2 {
            color: #333;
            margin-top: 0;
            font-size: 1.4rem;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid #EEE;
        }

        .footer {
            text-align: center;
            padding: 1.5rem;
            background: var(--accent-color);
            color: #666;
            margin-top: 3rem;
            font-size: 0.9rem;
            border-top: 1px solid var(--primary-color);
        }

        .highlight {
            font-weight: 500;
            color: #444;
        }

        @media (max-width: 768px) {
            .developer-header {
                flex-direction: column;
                text-align: center;
            }

            .developer-avatar {
                margin-right: 0;
                margin-bottom: 1rem;
            }

            .tech-badges {
                justify-content: center;
            }

            .contact-link {
                margin-bottom: 0.5rem;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="header">
        <div class="container">
            <h1>Команда разработчиков <span class="highlight">Cryo Bank</span></h1>
        </div>
    </div>

    <div class="container">
        <div class="about-project">
            <h2>О проекте <span class="highlight">Cryo Bank</span></h2>
            <p><span class="highlight">Cryo Bank</span> — современная банковская платформа, сочетающая в себе надежность и инновационные технологии. Наша миссия — создать удобный и безопасный финансовый инструмент для каждого пользователя.</p>
            <p>В основе системы лежат принципы <span class="highlight">производительности</span>, <span class="highlight">безопасности</span> и <span class="highlight">масштабируемости</span>. Мы используем только проверенные решения и следуем лучшим практикам разработки.</p>
        </div>

        <div class="developer-card">
            <div class="developer-header">
                <div class="developer-avatar">А</div>
                <div class="developer-info">
                    <h2>Артем</h2>
                    <p class="developer-title">Ведущий Backend-разработчик</p>
                </div>
            </div>

            <div class="bio">
                <p>Артем — опытный <span class="highlight">Java-разработчик</span> с более чем 1- летним стажем работы в корпоративной разработке. Специализируется на создании высоконагруженных финансовых систем.</p>
                <p>В проекте <span class="highlight">Cryo Bank</span> отвечал за архитектуру backend-части и интеграцию с платежными системами. Сторонник принципов <span class="highlight">чистого кода</span> и <span class="highlight">SOLID</span>.</p>
            </div>

            <div class="tech-stack">
                <h3>Технологический стек</h3>
                <div class="tech-badges">
                    <span class="tech-badge">Java Core</span>
                    <span class="tech-badge">Spring MVC</span>
                    <span class="tech-badge">Spring Web</span>
                    <span class="tech-badge">Spring Core</span>
                    <span class="tech-badge">Hibernate</span>
                    <span class="tech-badge">SQLite</span>
                    <span class="tech-badge">REST API</span>
                    <span class="tech-badge">Maven</span>
                    <span class="tech-badge">JUnit</span>
                </div>
            </div>

            <div class="contacts">
                <h3>Контакты</h3>
                <div style="display: flex; flex-wrap: wrap; gap: 0.5rem;">
                    <a href="https://t.me/psvms" class="contact-link" target="_blank">
                        <i class="fab fa-telegram contact-icon"></i>
                        @psvms
                    </a>
                    <a href="mailto:artem@cryobank.com" class="contact-link">
                        <i class="fas fa-envelope contact-icon"></i>
                        artem@cryobank.com
                    </a>
                    <a href="https://github.com/Artem-tes" class="contact-link" target="_blank">
                        <i class="fab fa-github contact-icon"></i>
                        psvms
                    </a>
                </div>
            </div>
        </div>

        <div class="about-project">
            <h2>Принципы разработки</h2>
            <ul style="list-style-type: none; padding-left: 0;">
                <li style="margin-bottom: 0.8rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-shield-alt" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Безопасность:</strong> Многоуровневая защита данных и транзакций
                </li>
                <li style="margin-bottom: 0.8rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-heart" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Надежность:</strong> Отказоустойчивая архитектура системы
                </li>
                <li style="margin-bottom: 0.8rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-tachometer-alt" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Производительность:</strong> Оптимизированные алгоритмы
                </li>
                <li style="margin-bottom: 0.8rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-expand" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Масштабируемость:</strong> Гибкая архитектура для роста
                </li>
                <li style="margin-bottom: 0.8rem; padding-left: 1.5rem; position: relative;">
                    <i class="fas fa-hands-helping" style="color: var(--secondary-color); position: absolute; left: 0;"></i>
                    <strong>Поддержка:</strong> Постоянное развитие и обновление
                </li>
            </ul>
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <p>© 2023 <span class="highlight">Cryo Bank</span>. Все права защищены.</p>
            <p>Разработано с заботой о пользователях</p>
        </div>
    </div>
</body>
</html>