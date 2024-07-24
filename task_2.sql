-- Create database if it doesn't exist

CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use database
USE alx_book_store;

-- Create table for authors
CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)
);

-- Create table for books
CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  price DOUBLE,
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
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create table for order details
CREATE TABLE Order_Details (
  orderdetailid INT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);