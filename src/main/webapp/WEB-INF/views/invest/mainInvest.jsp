<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="org.webapplication.backend.models.Company" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Инвестиции | Cryo Bank</title>
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
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1.5rem;
        }

        .scroll-panel {
            background-color: white;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            padding: 1.5rem;
            max-height: 70vh;
            overflow-y: auto;
        }

        .company-card {
            background-color: white;
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease;
            margin-bottom: 1.5rem;
            border-left: 4px solid var(--secondary-color);
        }

        .company-card:hover {
            transform: translateY(-5px);
        }

        .company-card h3 {
            color: #333;
            font-size: 1.4rem;
            margin-top: 0;
            margin-bottom: 1rem;
        }

        .company-card p {
            color: #555;
            line-height: 1.6;
        }

        .company-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1rem;
            margin: 1.5rem 0;
        }

        .detail-item {
            background-color: var(--accent-color);
            padding: 1rem;
            border-radius: 8px;
            text-align: center;
        }

        .detail-item p:first-child {
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: #333;
        }

        .investment-form {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .investment-form input {
            flex: 1;
            padding: 0.8rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        .investment-form button {
            background-color: var(--secondary-color);
            color: #333;
            border: none;
            padding: 0 1.5rem;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 500;
        }

        .investment-form button:hover {
            background-color: var(--primary-color);
        }

        .no-companies {
            text-align: center;
            padding: 2rem;
            color: #666;
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
            .investment-form {
                flex-direction: column;
            }

            .company-details {
                grid-template-columns: 1fr;
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
        <h1 class="header-title">Инвестиционные возможности</h1>
    </header>

    <div class="container">
        <div class="scroll-panel">
            <%
            List<Company> companies = (List<Company>) request.getSession().getAttribute("companies");
            if (companies != null && !companies.isEmpty()) {
                for (Company company : companies) {
            %>
            <div class="company-card">
                <h3><i class="fas fa-building"></i> <%= company.getName() %></h3>
                <p><%= company.getDescription() %></p>

                <div class="company-details">
                    <div class="detail-item">
                        <p>Начальный капитал</p>
                        <p><%= company.getInitCapital() %> RUB</p>
                    </div>
                    <div class="detail-item">
                        <p>Текущий капитал</p>
                        <p><%= company.getTodayCapital() %> RUB</p>
                    </div>
                </div>

                <form class="investment-form" action="/invest/pay" method="post">
                    <input type="hidden" name="companyId" value="<%= company.getId() %>">
                    <input type="number" name="amount" placeholder="Сумма инвестиции" required min="1000">
                    <button type="submit">
                        <i class="fas fa-chart-line"></i> Инвестировать
                    </button>
                </form>
            </div>
            <%
                }
            } else {
            %>
            <div class="no-companies">
                <i class="fas fa-info-circle" style="font-size: 2rem; color: var(--secondary-color); margin-bottom: 1rem;"></i>
                <p>В настоящее время нет доступных компаний для инвестирования.</p>
            </div>
            <%
            }
            %>
        </div>
    </div>

    <footer>
        &copy; 2025 Cryo Bank. Все права защищены.<br>
        <small>Лицензия ЦБ РФ №115678</small>
    </footer>
</body>
</html>