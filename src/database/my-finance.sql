CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    username VARCHAR(100) UNIQUE,
    password_hash VARCHAR(255),
    phone_number VARCHAR(20),
    profile_photo VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE incomes (
    income_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    income_from VARCHAR(100),
    category ENUM('salary', 'debt-payment', 'lent-payment', 'others', 'debt'),
    value DECIMAL(15,2),
    date_time DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE outcomes (
    outcome_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    outcome_for VARCHAR(100),
    category ENUM('needs', 'wants', 'debt-payment', 'lent', 'others'),
    value DECIMAL(15,2),
    date_time DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE balance_distribution (
    user_id INT PRIMARY KEY,
    bank_percentage DECIMAL(5,2),
    cash_percentage DECIMAL(5,2),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE planning (
    planning_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    category ENUM('needs', 'wants', 'others'),
    percentage DECIMAL(5,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE planning_details (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    planning_id INT,
    type ENUM('income', 'outcome'),
    purpose VARCHAR(100),
    category ENUM('debt-payment', 'lent-payment', 'others', 'salary', 'debt', 'lenient-payment'),
    cost DECIMAL(15,2),
    date_time DATETIME,
    repeat_option ENUM('none', 'weekly', 'monthly', 'yearly') DEFAULT 'none',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (planning_id) REFERENCES planning(planning_id) ON DELETE CASCADE
);

CREATE TABLE financial_summary (
    user_id INT PRIMARY KEY,
    total_balance DECIMAL(15,2),
    net_balance DECIMAL(15,2),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE predictions (
    prediction_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    type ENUM('income', 'expense'),
    description VARCHAR(100),
    estimated_value DECIMAL(15,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE monthly_report (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    year INT,
    month INT,
    total_income DECIMAL(15,2),
    total_expense DECIMAL(15,2),
    max_income DECIMAL(15,2),
    min_income DECIMAL(15,2),
    avg_income DECIMAL(15,2),
    max_expense DECIMAL(15,2),
    min_expense DECIMAL(15,2),
    avg_expense DECIMAL(15,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
