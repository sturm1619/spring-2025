from collections.abc import Sequence
import os

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches

import geopandas as gpd
from cartogram import Cartogram
# import folium
# import mapclassify

# print(colormaps)
# from bs4 import BeautifulSoup

tariff_data = pd.read_csv("./state_tariff.csv", header=0)
albers_us_map = gpd.read_file("./us_albers/us_albers.shp")
tax_choropleth_data = pd.merge(albers_us_map, tariff_data, on="NAME", how="left")
title: str = "Estimated impact of Trump tariffs on Imports from Canada, China" \
    + " and Mexico"

# print(tax_choropleth_data.head())

def generate_bin_labels(bins: Sequence[int|float]) -> list[str]:
    bin_labels = []
    for index in range(len(bins)):
        match index:
            case 0:
                bin_labels.append(fr"< USD${round(bins[index])}")
            case _ if index == len(bins) - 1:
                bin_labels.append(fr"> USD${round(bins[index])}")
            case _:
                bin_labels.append(fr"USD${round(bins[index-1])} ~ USD\${round(bins[index])}")

    return bin_labels

def basic_choropleth() -> None:
    bins = (1_000, 3_000, 10_000, 30_000, 47_000)
    bin_labels = generate_bin_labels(bins)
    handles = [mpatches.Patch(color=plt.cm.cool(i / len(bins)), label=label)
               for i, label in enumerate(bin_labels)]
    tax_choropleth_data.plot(
            column="tariff", legend=True, cmap="cool", scheme="User_Defined",
            classification_kwds=dict(bins=bins)
        )

    ax = plt.gca()
    ax.legend(handles=handles,# bbox_to_anchor=(1.04, 1),
              loc='upper left', title='Tariff')
    ax.set_axis_off()
    ax.set_title(title, weight="bold", size="x-large", fontname="Noto Serif")
    plt.show()

def binned_choropleth() -> None:
    bins = tuple(
        tax_choropleth_data.sort_values("tariff").iloc[i].tariff for i in range(9,50,10)
    )
    bin_labels = generate_bin_labels(bins)

    handles = [mpatches.Patch(color=plt.cm.cool(i / len(bins)), label=label)
               for i, label in enumerate(bin_labels)]

    tax_choropleth_data.plot(
        column="tariff", legend=True, cmap="cool", scheme="User_Defined",
        classification_kwds=dict(bins=bins)
    )
    ax = plt.gca()
    ax.legend(handles=handles, bbox_to_anchor=(1.04, 1), loc='upper left', title='Tariff')
    ax.set_axis_off()
    ax.set_title(title, weight="bold", size="x-large", fontname="Noto Serif")
    plt.show()

# binned_choropleth()
# basic_choropleth()

def contiguous_cartogram():
    print(True)

try:
    us_cartogram_data = gpd.read_file("cartogram_data/cartogram_albers.shp")
    us_cartogram = Cartogram(us_cartogram_data, "Population")
except FileNotFoundError:
    print("Cartograms not found. Creating data...")
    population_data = pd.read_csv("./2024_state_pops.csv", header=0, index_col=0)
    us_cartogram_data = pd.merge(tax_choropleth_data, population_data, on="NAME", how="left")
    us_cartogram = Cartogram(us_cartogram_data, "Population") # FIX: Cartogram constructor is slow!!

    if 'cartogram_data' not in os.listdir():
        os.mkdir("cartogram_data")

    us_cartogram.to_file("cartogram_data/cartogram_albers.shp")
finally:
    contiguous_cartogram()


