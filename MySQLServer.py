import mysql.connector
from mysql.connector import Error

def create_database(host_name, database_name, user_name, user_password):
    """Create a database in the MySQL server."""
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            password=user_password
        )
        cursor = connection.cursor()
        cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
        print(f"Database '{database_name}' created successfully!")
    except Error as e:
        print(f"Error while creating database: {e}")
    finally:
        if connection is not None:
            connection.close()

if __name__ == "__main__":
    host_name = "localhost"
    database_name = "alx_book_store"
    user_name = "root"
    user_password = "Redeemer1221!@"

    create_database(host_name, database_name, user_name, user_password)