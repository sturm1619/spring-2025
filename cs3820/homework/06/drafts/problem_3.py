from climate_data import df_temps

import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

data_per_month: dict[str, pd.DataFrame] = {}
MONTHS: tuple[str] = (
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
)

fig, ax = plt.subplots(12, 1)
yaxis = None

for axes, month in zip(ax, MONTHS):
    # sns.kdeplot(data_per_month[month].meantemp, ax=axes)
    sns.kdeplot(
        df_temps[df_temps.month == month].meantemp, ax=axes, label=month, fill=True, cmap="coolwarm"
    )
    yaxis = axes.yaxis

    axes.spines[["top", "bottom", "left", "right"]].set_visible(False)
    axes.set_xlabel(" ")
    axes.set_ylabel(" ")
    axes.set_xticklabels([])
    axes.set_yticklabels([])
    axes.yaxis.set_ticks_position("none")
    axes.xaxis.set_ticks_position("none")
    axes.set_facecolor("none")

plt.subplots_adjust(hspace=-0.3)
plt.show()
