CREATE TABLE product_reviews (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    added_by BIGINT UNSIGNED DEFAULT NULL,
    edited_by BIGINT UNSIGNED DEFAULT NULL,
    reviewer_name VARCHAR(255) NOT NULL,
    review_text TEXT,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    review_date DATETIME NOT NULL,
    product_id BIGINT UNSIGNED,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    FOREIGN KEY (added_by) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (edited_by) REFERENCES users(id) ON DELETE SET NULL
);
