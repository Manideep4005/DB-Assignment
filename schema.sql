/* creating of product table */

create table product (
  id INT PRIMARY KEY,
  name VARCHAR,
  desc TEXT,
  SKU VARCHAR,
  category_id INT FOREIGN KEY REFERENCES product_category(id),
  inventory_id INT FOREIGN KEY REFERENCES product_inventory(id),
  price DECIMAL,
  discount_id INT FOREIGN KEY REFERENCES discount(id),
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP);


/*Product_category*/
create table product_category (
  id INT PRIMARY KEY,
  name VARCHAR,
  desc TEXT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP);


/* product_inventory */
create table product (
  id INT PRIMARY KEY,
  quantity INT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP); 


/* discount */
create table product (
  id INT PRIMARY KEY,
  name VARCHAR,
  desc TEXT,
  discount_percent DECIMAL,
  active BOOLEAN,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP);
