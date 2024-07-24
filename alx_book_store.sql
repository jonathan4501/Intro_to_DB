-- Create database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use database
USE alx_book_store;

-- Create table for authors
CREATE TABLE Author (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)
);

-- Create table for books
CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  price double,
  PUBLICATION_DATE DATE,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create table for customers
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
);

-- Create table for orders
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_id DATE,
  FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

-- Create table for order details
CREATE TABLE Order_details (
  orderdetailid INT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity double,
  FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
  FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);