from extract import extract_all
from transform import transform_table
from load import load_all

raw = extract_all()
clean = {name: transform_table(name, df) for name, df in raw.items()}
load_all(clean)
print("ETL complete")