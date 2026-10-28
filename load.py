import os
from dotenv import load_dotenv
from sqlalchemy import create_engine, text
from urllib.parse import quote_plus

load_dotenv()
USER = os.getenv("DB_USER")
PASSWORD = os.getenv("DB_PASSWORD")
HOST = os.getenv("DB_HOST")
PORT = os.getenv("DB_PORT")
DB = os.getenv("DB_NAME")

def create_database():
    pw = quote_plus(PASSWORD)
    engine = create_engine(f"mysql+pymysql://{USER}:{pw}@{HOST}:{PORT}/")
    with engine.connect() as conn:
        conn.execute(text(f"CREATE DATABASE IF NOT EXISTS {DB}"))
        conn.commit()

def load_all(data):
    create_database()
    pw = quote_plus(PASSWORD)
    engine = create_engine(f"mysql+pymysql://{USER}:{pw}@{HOST}:{PORT}/{DB}")
    for name, df in data.items():
        df.to_sql(name, engine, if_exists="replace", index=False)
        print(f"Loaded {name}: {len(df)} rows")