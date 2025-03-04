import pandas as pd
# import os

# df_temps = pd.read_csv("DailyDelhiClimateTrain.csv")
try:
    df_temps = pd.read_csv("DailyDelhiClimateTrain.csv")
except FileNotFoundError:
    df_temps = pd.read_csv("../DailyDelhiClimateTrain.csv")

df_temps["month"] = pd.to_datetime(df_temps.date).apply(lambda x: x.strftime("%B"))

if __name__ == "__main__":
    print(df_temps.head())
