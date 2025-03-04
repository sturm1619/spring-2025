import matplotlib.pyplot as plt
import seaborn as sns

from climate_data import df_temps
# from problem_1 import january_data

january_data = df_temps[df_temps["month"] == "January"].meantemp
fig, ax = plt.subplots(2, 1)

cloud = sns.kdeplot(january_data, fill=True, ax=ax[0])
cloud.spines[["top", "left", "right", "bottom"]].set_visible(False)
cloud.set_xlabel(" ")
cloud.set_ylabel(" ")
cloud.set_yticklabels([])
cloud.set_xticklabels([])
cloud.yaxis.set_ticks_position("none")
cloud.xaxis.set_ticks_position("none")

rain = sns.stripplot(january_data, jitter=True, orient="h", ax=ax[1], alpha=0.7)
rain.xaxis = cloud.get_xaxis()
rain.spines[["top", "left", "right", "bottom"]].set_visible(False)

plt.tick_params(
    "both",
    which="both",
    left=False,
)

plt.show()
