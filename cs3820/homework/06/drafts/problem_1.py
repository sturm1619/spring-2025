from climate_data import df_temps

# import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# df_temps["month"] = pd.to_datetime(df_temps.date).apply(lambda x: x.strftime("%B"))

january_data = df_temps[df_temps["month"] == "January"].meantemp

cloud = sns.kdeplot(january_data, fill=True)
cloud.set_title("Mean temperature in January")
cloud.set_xlabel("Mean temperature")
if __name__ == "__main__":
    plt.show()

rain = sns.stripplot(january_data, jitter=True, orient="h")
rain.set_title("Mean temperature in January")
rain.set_xlabel("Mean temperature")

if __name__ == "__main__":
    plt.show()
