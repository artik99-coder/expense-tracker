-- V5__create_session_table.sql
CREATE TABLE user_sessions (
                               id SERIAL PRIMARY KEY,
                               user_id INT NOT NULL,
                               session_token VARCHAR(255) NOT NULL,
                               created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                               last_accessed TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                               FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
