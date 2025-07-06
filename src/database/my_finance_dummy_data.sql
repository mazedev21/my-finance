
-- Dummy Data for My Finance

-- users
INSERT INTO users (full_name, email, username, password_hash, phone_number, profile_photo) VALUES
('Emannuel Henji', 'emhenji@example.com', 'emhenji', 'hashed_password_123', '081234567890', 'profile1.jpg'),
('Ayu Lestari', 'ayulestari@example.com', 'ayulestari', 'hashed_password_456', '082345678901', 'profile2.jpg');

-- balance_distribution
INSERT INTO balance_distribution (user_id, bank_percentage, cash_percentage) VALUES
(1, 65.00, 35.00),
(2, 70.00, 30.00);

-- financial_summary
INSERT INTO financial_summary (user_id, total_balance, net_balance) VALUES
(1, 5000000.00, 4800000.00),
(2, 6500000.00, 6300000.00);

-- incomes
INSERT INTO incomes (user_id, income_from, category, value, date_time) VALUES
(1, 'Gaji Bulanan', 'salary', 4500000.00, '2025-07-01 09:00:00'),
(1, 'Pembayaran Piutang', 'lent-payment', 500000.00, '2025-07-03 15:00:00'),
(2, 'Freelance', 'others', 2500000.00, '2025-07-02 10:30:00');

-- outcomes
INSERT INTO outcomes (user_id, outcome_for, category, value, date_time) VALUES
(1, 'Bayar Listrik', 'needs', 300000.00, '2025-07-04 18:00:00'),
(1, 'Nonton Bioskop', 'wants', 100000.00, '2025-07-05 20:00:00'),
(2, 'Transfer ke teman', 'lent', 500000.00, '2025-07-06 14:00:00');

-- planning
INSERT INTO planning (user_id, category, percentage) VALUES
(1, 'needs', 50.00),
(1, 'wants', 30.00),
(1, 'others', 10.00);

-- planning_details
INSERT INTO planning_details (planning_id, type, purpose, category, cost, date_time, repeat_option) VALUES
(1, 'outcome', 'Bayar Kontrakan', 'others', 750000.00, '2025-07-10 10:00:00', 'monthly'),
(1, 'income', 'Gaji Bulanan', 'salary', 4500000.00, '2025-07-01 09:00:00', 'monthly');

-- predictions
INSERT INTO predictions (user_id, type, description, estimated_value) VALUES
(1, 'income', 'Gaji Bulan Depan', 4500000.00),
(1, 'expense', 'Perkiraan Pengeluaran', 1800000.00);

-- monthly_report
INSERT INTO monthly_report (user_id, year, month, total_income, total_expense, max_income, min_income, avg_income, max_expense, min_expense, avg_expense) VALUES
(1, 2025, 7, 5000000.00, 1600000.00, 4500000.00, 500000.00, 2500000.00, 1000000.00, 300000.00, 800000.00);
