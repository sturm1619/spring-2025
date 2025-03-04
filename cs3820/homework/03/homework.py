# vim: set filetype=py
from collections.abc import Generator, Sequence

import pandas as pd
import matplotlib.pyplot as plt

stdout_on = False

def data_cleaning(df: pd.DataFrame) -> pd.DataFrame:
    df = df.replace("..",0)
    for column in df:
        if column.isnumeric():
            df[column] = pd.Series(df[column], dtype="int64")
            df[column].apply(int)

    return df

def type_total(df: pd.DataFrame, migrant_type: str) -> pd.DataFrame:
    years = [column for column in df.columns if df[column].dtype == "int64"]
    countries = {country for country in df["CntName"]}

    df_migrants = pd.DataFrame(
        columns=pd.Index(["CntName"] + years),
        index=pd.Index(countries)
    )
    for country in countries:
        df_migrants.loc[country] = \
            df[years][(df["CntName"] == country) & (df["Type"] == migrant_type)] \
            .sum()
        df_migrants.loc[country, "CntName"] = country

    # if "stdout_on" in globals():
    #     if stdout_on:
    #         print(df_migrants)

    return df_migrants


def plot_data(immigration_data: pd.DataFrame,
              emigration_data: pd.DataFrame,
              countries: Sequence[str]) -> None:
    global years

    _, axes = plt.subplots(2,2)
    plt.tight_layout(pad=.5,w_pad=0.1)

    for i in range(2):
        for j in range(2):
            country_index = 2 * i + j
            country = countries[country_index]
            axis = axes[i,j]
            # input(immigration_data.loc[country, years])
            axis.plot(
                immigration_data.loc[country, years],
                linestyle="-", color="green", label="Immigrants"
            )

            axis.plot(
                emigration_data.loc[country, years].T,
                linestyle="-", color="red", label="Emigrants"
            )

            axis.set(
                title=country,
                xlabel="Year", ylabel="Amount of migrants",
            )
            for label in axis.get_xticklabels():
                label.set_rotation(60)
            axis.legend()
    plt.show()

if __name__ == "__main__":
    df = pd.read_csv("immigration_data.csv")
    # print(df.head())

    """Problem 1: Cleaning Data"""
    df = data_cleaning(df)
    # df.info()

    metadata: Generator[str] = \
        (column for column in df.columns if df[column].dtype != "int64")
    years = [column for column in df.columns if df[column].dtype == "int64"]

    """Problem 2: How many...?""" 
    print(
        "Count of immigrants throughout 2004:",
          f"{sum(df["2004"]):,}"
          )

    print(
        "Count of emigrants from Italy from 1980 to 2013:",
        f"{df[(df["CntName"] == "Italy") & (df["Type"] == "Emigrants")] \
        .sum().drop(metadata).sum():,}"
    )

    """Problem 3: """
    df_immigrants = type_total(df, "Immigrants")
    df_emigrants = type_total(df, "Emigrants")

    """Problem 4: """
    plot_data(
        df_immigrants, df_emigrants,
        ("Armenia", "Canada", "Ireland", "Norway")
    )

