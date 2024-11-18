-- V4__create_report_table.sql
CREATE TABLE reports (
                         id SERIAL PRIMARY KEY,
                         user_id INT NOT NULL,
                         report_name VARCHAR(100) NOT NULL,
                         start_date TIMESTAMP,
                         end_date TIMESTAMP,
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
