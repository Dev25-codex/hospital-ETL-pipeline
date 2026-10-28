# Hospital Data ETL Pipeline

Python ETL pipeline that extracts hospital CSV data, cleans it with pandas, and loads it into MySQL.

## Tech Stack
Python, pandas, SQLAlchemy, PyMySQL, MySQL

## Pipeline
1. **Extract**: reads patients, doctors, appointments, billing and treatments CSVs
2. **Transform**: removes duplicates, converts date columns
3. **Load**: creates `hospital_db` and loads 5 tables into MySQL

## Project Structure
- `extract.py`: reads CSV files
- `transform.py`: cleans data
- `load.py`: loads data into MySQL
- `main.py`: runs the full pipeline

## How to Run
1. Install libraries: `pip install -r requirements.txt`
2. Create a `.env` file in the root folder:

        DB_USER=root
        DB_PASSWORD='your_password'
        DB_HOST=localhost
        DB_PORT=3306
        DB_NAME=hospital_db

3. Make sure MySQL server is running
4. Run: `python main.py`