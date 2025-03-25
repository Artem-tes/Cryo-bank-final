<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Поддержка Cryo Bank</title>
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
            max-width: 1000px;
            margin: 30px auto;
            padding: 0 20px;
        }
        .support-hero {
            background: linear-gradient(135deg, #00b4db, #0083b0);
            color: white;
            padding: 50px;
            border-radius: 20px;
            text-align: center;
            margin-bottom: 40px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        .support-hero h1 {
            font-size: 42px;
            margin-bottom: 20px;
        }
        .support-hero p {
            font-size: 20px;
            margin-bottom: 30px;
        }
        .email-support {
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            text-align: center;
            margin-bottom: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .email-support:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .email-icon {
            font-size: 60px;
            color: #f57c00;
            margin-bottom: 20px;
        }
        .email-address {
            font-size: 28px;
            color: #0083b0;
            font-weight: bold;
            margin: 20px 0;
            word-break: break-all;
        }
        .support-features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }
        .feature-card {
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .feature-icon {
            font-size: 40px;
            color: #f57c00;
            margin-bottom: 20px;
        }
        .feature-card h3 {
            font-size: 22px;
            color: #f57c00;
            margin-bottom: 15px;
        }
        .feature-card p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
        }
        .testimonials {
            background-color: #f5f5f5;
            padding: 40px;
            border-radius: 20px;
            margin-bottom: 40px;
        }
        .testimonials h2 {
            text-align: center;
            color: #f57c00;
            margin-bottom: 30px;
            font-size: 28px;
        }
        .testimonial-card {
            background-color: white;
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .testimonial-text {
            font-style: italic;
            margin-bottom: 15px;
            font-size: 16px;
        }
        .testimonial-author {
            font-weight: bold;
            color: #f57c00;
        }
        .cta-section {
            text-align: center;
            margin-bottom: 40px;
        }
        .cta-button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 15px 40px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 50px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .cta-button:hover {
            background-color: #e65100;
            transform: scale(1.05);
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
    </style>
</head>
<body>
    <header>
        Cryo Bank - Криобанк будущего
        <button class="user-button">Личный кабинет</button>
    </header>

    <div class="container">
        <div class="support-hero">
            <h1>Наша служба поддержки всегда рядом!</h1>
            <p>Мы ценим каждого клиента и готовы помочь 24/7</p>
        </div>

        <div class="email-support">
            <div class="email-icon">✉️</div>
            <h2>Свяжитесь с нами по электронной почте</h2>
            <p>Наша команда ответит вам в течение 1 часа в рабочее время</p>
            <div class="email-address">support@cryobank.com</div>
            <p>Мы гарантируем конфиденциальность и профессиональный подход к каждому запросу</p>
        </div>

        <div class="support-features">
            <div class="feature-card">
                <div class="feature-icon">⏱️</div>
                <h3>Мгновенная реакция</h3>
                <p>Наши специалисты отвечают на запросы в среднем за 15 минут. Мы понимаем, что ваше время ценно, и не заставляем ждать.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🔒</div>
                <h3>Полная конфиденциальность</h3>
                <p>Все ваши данные защищены банковской тайной и современными криптографическими алгоритмами. Мы гарантируем безопасность.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🌐</div>
                <h3>Поддержка на 12 языках</h3>
                <p>Наши специалисты говорят на русском, английском, китайском и других популярных языках. Вы получите помощь на родном языке.</p>
            </div>
        </div>

        <div class="testimonials">
            <h2>Что говорят наши клиенты</h2>
            <div class="testimonial-card">
                <p class="testimonial-text">"Обратился в поддержку Cryo Bank с сложным вопросом по инвестициям. Меня не только подробно проконсультировали, но и предложили индивидуальное решение. Очень впечатлен!"</p>
                <p class="testimonial-author">— Михаил К., инвестор с 2018 года</p>
            </div>
            <div class="testimonial-card">
                <p class="testimonial-text">"Никогда не встречал такой оперативной поддержки. Письмо отправил в 3 часа ночи, а ответ уже был в 3:17! Это действительно сервис высшего класса."</p>
                <p class="testimonial-author">— Анна П., предприниматель</p>
            </div>
        </div>

        <div class="cta-section">
            <h2>Остались вопросы?</h2>
            <p>Наша команда экспертов готова помочь вам прямо сейчас</p>
            <button class="cta-button" onclick="window.location.href='mailto:support@cryobank.com'">Написать в поддержку</button>
        </div>
    </div>

    <footer>
        © 2023 Cryo Bank. Все права защищены.<br>
        Криобанкинг нового поколения | Технологии будущего уже сегодня
    </footer>
</body>
</html>