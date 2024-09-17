-- Kategorilere veri ekleme
INSERT INTO category (id, description, name)
VALUES (nextval('category_seq'), 'Elektronik cihazlar ve aksesuarlar', 'Elektronik');

INSERT INTO category (id, description, name)
VALUES (nextval('category_seq'), 'Moda ve giyim ürünleri', 'Giyim');

INSERT INTO category (id, description, name)
VALUES (nextval('category_seq'), 'Ev eşyaları ve dekorasyon', 'Ev Dekorasyonu');

-- Ürünlere veri ekleme
INSERT INTO product (id, description, name, available_quantity, price, category_id)
VALUES (nextval('product_seq'), 'Akıllı telefon, 6.5 inç ekran, 128GB depolama', 'Akıllı Telefon', 100, 5999.99,
        (SELECT id FROM category WHERE name = 'Elektronik'));

INSERT INTO product (id, description, name, available_quantity, price, category_id)
VALUES (nextval('product_seq'), 'Erkek kot pantolon, mavi renk, 32 beden', 'Kot Pantolon', 50, 199.99,
        (SELECT id FROM category WHERE name = 'Giyim'));

INSERT INTO product (id, description, name, available_quantity, price, category_id)
VALUES (nextval('product_seq'), 'Ahşap masa, 4 kişilik, doğal meşe kaplama', 'Ahşap Masa', 20, 1499.99,
        (SELECT id FROM category WHERE name = 'Ev Dekorasyonu'));