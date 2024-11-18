-- V3__create_transaction_table.sql
CREATE TABLE transactions (
                              id SERIAL PRIMARY KEY,
                              user_id INT NOT NULL,
                              category_id INT NOT NULL,
                              amount DECIMAL(10, 2) NOT NULL,
                              transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                              description TEXT,
                              type VARCHAR(50) CHECK (type IN ('income', 'expense')) NOT NULL,
                              FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
                              FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);