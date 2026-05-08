-- Create Database
CREATE DATABASE IF NOT EXISTS gpt_plus CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE gpt_plus;

-- Products Table
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10, 2),
    image VARCHAR(255),
    description TEXT,
    status ENUM('active', 'out_of_stock', 'hidden') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Settings Table (Optional if using JSON, but good for DB)
CREATE TABLE IF NOT EXISTS settings (
    `key` VARCHAR(100) PRIMARY KEY,
    `value` TEXT,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Initial Data for Products
INSERT INTO products (title, category, price, image, description) VALUES
('Tài khoản ChatGPT Plus (1 Tháng)', 'ChatGPT', 450000, 'https://images.unsplash.com/photo-1675271591211-126ad94e4958?auto=format&fit=crop&q=80&w=400&h=250', 'Trải nghiệm AI mạnh mẽ nhất với GPT-4.'),
('YouTube Premium (Mail Chính Chủ)', 'YouTube', 250000, 'https://images.unsplash.com/photo-1611162617474-5b21e879e113?auto=format&fit=crop&q=80&w=400&h=250', 'Xem video không quảng cáo.'),
('Github Copilot (Gói Dev 1 Năm)', 'GitHub', 150000, 'https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?auto=format&fit=crop&q=80&w=400&h=250', 'Trợ lý lập trình AI đỉnh cao.');
