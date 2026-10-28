from pathlib import Path
import pandas as pd

BASE_DIR = Path(__file__).resolve().parent
DATA_DIR = BASE_DIR / "hospital_dataset" / "archive (4)"
TABLES = ["patients", "doctors", "appointments", "billing", "treatments"]

def extract_all():
    data = {}
    for name in TABLES:
        df = pd.read_csv(DATA_DIR / f"{name}.csv")
        print(f"Extracted {name}: {df.shape}")
        data[name] = df
    return data