import pandas as pd

def transform_table(name, df):
    df = df.drop_duplicates().copy()
    for col in df.columns:
        if "date" in col.lower():
            df[col] = pd.to_datetime(df[col], errors="coerce")
    print(f"Transformed {name}: {df.shape}")
    return df