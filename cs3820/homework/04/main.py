import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.image as image
from matplotlib.offsetbox import OffsetImage, AnnotationBbox
from PIL import Image
# from collections.abc import Callable

df_immigrants = pd.read_csv("immigrants.csv", index_col = 0)
df_emigrants = pd.read_csv("emigrants.csv", index_col = 0)

countries: tuple[str, ...] = "Australia", "New Zealand", "Belgium", "Italy", "Netherlands"
years: list[str] = [str(year) for year in range(1995, 2005)]

interest_data_2000: pd.DataFrame = \
    df_immigrants[df_immigrants["CntName"].isin(countries)][["CntName"]]
interest_data_2000["immigrants"] = \
    df_immigrants[df_immigrants["CntName"].isin(countries)]["2000"]
interest_data_2000["emigrants"] = \
    df_emigrants[df_emigrants["CntName"].isin(countries)]["2000"]
# print(interest_data_2000)
interest_data_2000.sort_values(by="immigrants",ascending=False, inplace=True)
# interest_data_2000.color = interest_data_2000.CntName.apply(
#     lambda x: "orange" if x in ("Australia", "New Zealand") else "#1f77b4"
# )

interest_data_aus: pd.DataFrame = \
    pd.DataFrame(index=pd.Index(years))

interest_data_aus["immigrants"] = df_immigrants[df_immigrants["CntName"] == "Australia"][years].T
interest_data_aus["emigrants"] = df_emigrants[df_emigrants["CntName"] == "Australia"][years].T

# print(interest_data_aus)

interest_data_aus.sort_index(ascending=True, inplace=True)

def make_barcharts():
    """Problem 1""" 
    _, axes = plt.subplots(1,2)

    """2000s"""
    country_bars = axes[0].bar(
        interest_data_2000.CntName, interest_data_2000.immigrants
        # color = interest_data_2000.color
    )
    axes[0].bar_label(
        country_bars,
        labels = [
            f'{value:,}' for value
            in interest_data_2000.immigrants.astype('int64').values
        ]
    ) # Labels bars directly
    axes[0].set(
        title="Immigration to 5 countries in 2000",
        xlabel="Countries", ylabel="Population"
    )

    """Australia's"""
    years_bar = axes[1].bar(
        interest_data_aus.index, interest_data_aus.immigrants
    )

    axes[1].bar_label( # Labels bars directly
        years_bar,
        labels=[f'{value:,}' for value in interest_data_aus.immigrants.astype('int64').values]
    )
    axes[1].set(
        title="Australia's immigration from 1995 to 2004", # Title
        xlabel="Year", ylabel="Population",
    )

    for ax in axes: # Remove axis lines
        ax.spines[["left","right","top"]].set_visible(False)
        ax.yaxis.set_visible(False)

    plt.show()

def make_lollypop():
    """Problem 2""" 
    _, axes = plt.subplots(1,2)

    """2000s"""
    country_bars = axes[0].bar(
        interest_data_2000.CntName, interest_data_2000.immigrants,
        width=0.05
        # color = interest_data_2000.color
    )
    axes[0].bar_label(
        country_bars,
        labels = [
            f'{value:,}' for value
            in interest_data_2000.immigrants.astype('int64').values
        ]
    ) # Labels bars directly
    axes[0].set(
        title="Immigration to 5 countries in 2000",
        xlabel="Countries", ylabel="Population"
    )

    # Add flags
    for country, bar in zip(interest_data_2000.CntName, country_bars):
        # print(f"{country[:3].lower()}.jpg")
        image = Image.open(f"./flags/{country[:3].lower()}.jpg").resize((1000,600))
        flag = np.asarray(image)

        # flag = image.imread(f"./flags/{country[:3].lower()}.jpg")
        imagebox = OffsetImage(flag, zoom=0.05)
        ab = AnnotationBbox(imagebox, (bar.get_x(), bar.get_height()), frameon=False)
        axes[0].add_artist(ab)

    """Australia's"""
    years_bar = axes[1].bar(
        interest_data_aus.index, interest_data_aus.immigrants,
        width=0.1
    )

    axes[1].bar_label( # Labels bars directly
        years_bar,
                      padding=8,
        labels=[f'{value:,}' for value in interest_data_aus.immigrants.astype('int64').values]
    )
    axes[1].set(
        title="Australia's immigration from 1995 to 2004", # Title
        xlabel="Year", ylabel="Population",
    )

    for ax in axes: # Remove axis lines
        ax.spines[["left","right","top"]].set_visible(False)
        ax.yaxis.set_visible(False)

    axes[1].scatter(
        interest_data_aus.index, interest_data_aus.immigrants,
        color='#1f77b4', s=100
    )

    plt.show()

def make_paired_bars():
    """Problem 3""" 
    """2000s"""

    axes = interest_data_2000.plot.bar("CntName", ["immigrants", "emigrants"])
    axes.tick_params(
        axis='x', labelrotation=1.0
    )
    axes.yaxis.grid(visible=True)
    axes.tick_params(axis='y', grid_alpha=0.3)
    # axes.legend.

    # Labels bars directly
    axes.set(
        title="Migration in 5 countries, in 2000",
        xlabel="Countries", ylabel="Population"
    )

    """Australia's"""
    axes = interest_data_aus.plot.bar(y=["immigrants", "emigrants"])
    axes.tick_params(
        axis='x', labelrotation=1.0
    )
    axes.yaxis.grid(visible=True)
    axes.tick_params(axis='y', grid_alpha=0.3)

    axes.set(
        title="Australia's migration values from 1995 to 2004", # Title
        xlabel="Year", ylabel="Population",
    )

    plt.show()

def make_barh():
    """Problem 4""" 
    """2000s"""

    interest_data_2000["immigrants"] = - interest_data_2000.immigrants

    axes = interest_data_2000.plot.barh("CntName", ["immigrants", "emigrants"])
    axes.tick_params(
        axis='x', labelrotation=1.0
    )
    axes.yaxis.grid(visible=True)
    axes.tick_params(axis='y', grid_alpha=0.3)

    # Labels bars directly
    axes.set(
        title="Migration in 5 countries, in 2000",
        xlabel="Countries", ylabel="Population"
    )

    immigrants_max, emigrants_max = interest_data_2000.immigrants.max(), interest_data_2000.emigrants.max()
    print(axes.get_xticks)
    # print(list(range(immigrants_max, emigrants_max+1, (emigrants_max - immigrants_max)//10)))

    axes.set_xticks(
        ticks=axes.get_xticks,
        # labels=ticks
    )

    axes.axvline(0, color='black')

    """Australia's"""
    # axes = interest_data_aus.plot.bar(y=["immigrants", "emigrants"])
    # axes.tick_params(
    #     axis='x', labelrotation=1.0
    # )
    # axes.yaxis.grid(visible=True)
    # axes.tick_params(axis='y', grid_alpha=0.3)
    #
    # axes.set(
    #     title="Australia's migration values from 1995 to 2004", # Title
    #     xlabel="Year", ylabel="Population",
    # )

    plt.show()


def main():
    # check_data(df_immigrants, df_emigrants)
    # make_barcharts()
    # make_lollypop()
    # make_paired_bars()
    make_barh()



    """Problem 2"""

    """Problem 3"""

    """Problem 4"""




if __name__ == "__main__":
    main()
