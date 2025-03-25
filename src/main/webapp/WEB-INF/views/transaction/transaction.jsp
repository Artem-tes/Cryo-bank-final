<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="org.webapplication.backend.models.BankTransaction" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>История транзакций | Cryo Bank</title>
    <style>
        :root {
            --primary-color: #FFEE93;
            --secondary-color: #F4D35E;
            --accent-color: #FEF9EF;
            --text-color: #333;
            --light-bg: #F8F7F2;
            --card-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            --income-color: #4CAF50;
            --expense-color: #FF4444;
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
            border-left: 4px solid var(--secondary-color);
            margin-bottom: 2rem;
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
            text-align: center;
        }

        .section p {
            font-size: 1.1rem;
            line-height: 1.6;
            color: #555;
            text-align: center;
            max-width: 800px;
            margin: 0 auto 1.5rem;
        }

        .transaction-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
            font-size: 1rem;
        }

        .transaction-table th {
            background-color: var(--secondary-color);
            color: #333;
            padding: 1rem;
            text-align: left;
            font-weight: 600;
        }

        .transaction-table td {
            padding: 1rem;
            border-bottom: 1px solid #EEE;
            vertical-align: middle;
        }

        .transaction-table tr:last-child td {
            border-bottom: none;
        }

        .transaction-table tr:hover {
            background-color: var(--accent-color);
        }

        .income {
            color: var(--income-color);
            font-weight: 600;
        }

        .expense {
            color: var(--expense-color);
            font-weight: 600;
        }

        .transaction-icon {
            font-size: 1.2rem;
            margin-right: 0.5rem;
            vertical-align: middle;
        }

        .transaction-type {
            display: inline-flex;
            align-items: center;
            padding: 0.3rem 0.8rem;
            border-radius: 50px;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .income-type {
            background-color: rgba(76, 175, 80, 0.1);
            color: var(--income-color);
        }

        .expense-type {
            background-color: rgba(255, 68, 68, 0.1);
            color: var(--expense-color);
        }

        .no-transactions {
            text-align: center;
            padding: 2rem;
            color: #666;
            font-size: 1.1rem;
        }

        .transaction-actions {
            display: flex;
            gap: 0.5rem;
        }

        .details-button {
            background-color: var(--accent-color);
            color: #333;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            cursor: pointer;
            font-size: 0.9rem;
            transition: all 0.2s ease;
        }

        .details-button:hover {
            background-color: var(--primary-color);
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

        .filter-section {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .filter-group {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .filter-button {
            background-color: var(--accent-color);
            color: #333;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .filter-button:hover, .filter-button.active {
            background-color: var(--secondary-color);
        }

        @media (max-width: 768px) {
            .transaction-table {
                font-size: 0.9rem;
            }

            .transaction-table th,
            .transaction-table td {
                padding: 0.8rem 0.5rem;
            }

            .filter-section {
                flex-direction: column;
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
        <h1 class="header-title">История транзакций</h1>
    </header>

    <div class="container">
        <div class="section">
            <h2><i class="fas fa-exchange-alt"></i> Ваши операции</h2>
            <p>Просматривайте полную историю всех финансовых операций по вашему счету. Для удобства используйте фильтры.</p>

            <!-- Фильтры -->
            <div class="filter-section">
                <div class="filter-group">
                    <span>Показать:</span>
                    <button class="filter-button active">Все</button>
                    <button class="filter-button">Зачисления</button>
                    <button class="filter-button">Списания</button>
                </div>
                <div class="filter-group">
                    <span>Период:</span>
                    <button class="filter-button">За месяц</button>
                    <button class="filter-button">За 3 месяца</button>
                    <button class="filter-button">За год</button>
                </div>
            </div>

            <!-- Таблица транзакций -->
            <table class="transaction-table">
                <thead>
                    <tr>
                        <th>Дата и время</th>
                        <th>Сумма</th>
                        <th>Тип операции</th>
                        <th>Описание</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    List<BankTransaction> transactions = (List<BankTransaction>) request.getSession().getAttribute("transactions");
                    if (transactions != null && !transactions.isEmpty()) {
                        for (BankTransaction transaction : transactions) {
                            String amountClass = transaction.getMove() == 1 ? "income" : "expense";
                            String operationType = transaction.getMove() == 1 ? "Зачисление" : "Перевод";
                            String typeClass = transaction.getMove() == 1 ? "income-type" : "expense-type";
                            String icon = transaction.getMove() == 1 ? "fa-arrow-down" : "fa-arrow-up";
                    %>
                    <tr>
                        <td><%= transaction.getDate() %></td>
                        <td class="<%= amountClass %>">
                            <i class="fas <%= icon %> transaction-icon"></i>
                            <%= transaction.getAmount() %> RUB
                        </td>
                        <td>
                            <span class="transaction-type <%= typeClass %>">
                                <i class="fas <%= transaction.getMove() == 1 ? "fa-download" : "fa-upload" %>"></i>
                                <%= operationType %>
                            </span>
                        </td>
                        <td>
                            <div class="transaction-actions">
                                <button class="details-button" title="Подробности">
                                    <i class="fas fa-info-circle"></i>
                                </button>
                                <button class="details-button" title="Повторить">
                                    <i class="fas fa-redo"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5" class="no-transactions">
                            <i class="fas fa-history" style="font-size: 2rem; margin-bottom: 1rem; display: block; color: var(--secondary-color);"></i>
                            У вас пока нет операций
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <footer>
        &copy; 2023 Cryo Bank. Все права защищены.<br>
        <small>Лицензия ЦБ РФ №11345</small>
    </footer>

    <script>
        // Простая фильтрация таблицы
        document.querySelectorAll('.filter-button').forEach(button => {
            button.addEventListener('click', function() {
                document.querySelectorAll('.filter-button').forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                // Здесь можно добавить логику фильтрации
            });
        });
    </script>
</body>
</html>