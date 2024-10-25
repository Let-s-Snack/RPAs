import unittest
from pymongo import MongoClient
import psycopg2
from dotenv import load_dotenv
import os

load_dotenv()

class TestConnections(unittest.TestCase):
    def test_sql_first_year(self):
        try:
            cnxn = psycopg2.connect(
                host=os.getenv('DB_HOST'),
                database=os.getenv('DB_DATABASE1'),
                user=os.getenv('DB_USER'),
                password=os.getenv('DB_PWD'),
                port=os.getenv('DB_PORT')
            )
            self.assertIsNotNone(cnxn)
            cnxn.close()
            print("✔️  First year SQL database connection success!")
        except Exception as e:
            self.fail(f"❌  Failed to connect to First year SQL database: {e}")
            
    def test_sql_second_year(self):
        try:
            cnxn = psycopg2.connect(
                host=os.getenv('DB_HOST'),
                database=os.getenv('DB_DATABASE2'),
                user=os.getenv('DB_USER'),
                password=os.getenv('DB_PWD'),
                port=os.getenv('DB_PORT')
            )
            self.assertIsNotNone(cnxn)
            cnxn.close()
            print("✔️  Second year SQL database connection success!")
        except Exception as e:
            self.fail(f"❌  Failed to connect to Second year SQL database: {e}")
            
    def test_mongodb(self):
        try:
            client = MongoClient(os.getenv('NO_SQL_HOST'))
            db = client[os.getenv('NO_SQL_DB')]
            self.assertIsNotNone(db)
            client.close()
            print("✔️  MongoDB connection success!")
        except Exception as e:
            self.fail(f"❌  Failed to connect to MongoDB: {e}")

if __name__ == "__main__":
    unittest.main()