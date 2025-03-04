from collections.abc import Generator, Iterator
from datetime import datetime

import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from matplotlib.lines import Line2D
import seaborn as sns
import pandas as pd


def _line_plot(
    axes: Axes,
    data: pd.DataFrame,
    title: str | None = None,
    countries: list[str] | None = None,
):
    timespan = int(data.index.values[-1]) - int(data.index.values[0])
    colors: Generator[str] = (
        color
        for color in (
            ("tab:blue", "tab:green", "tab:red", "tab:pink", "tab:cyan")
            if not countries
            else ["tab:green", "tab:blue"] + ["tab:gray"] * (len(data))
        )
    )

    for country in data.columns:
        color = "tab:orange" if country == "United States" else next(colors)
        data[country].plot(ax=axes, label=country, c=color)
        if not countries or country in countries:
            axes.text(timespan, data.loc["2023", country], country, color=color)

    if isinstance(title, str):
        axes.set_title(title)
    axes.grid(axis="y")
    axes.spines[["left", "right", "top", "bottom"]].set_visible(False)


def line_plots(
    df: pd.DataFrame,
    info_iter: Iterator[list[str]],
    super_title: str,
    *,
    rows: int = 1,
    subtitles: Generator[str] | None = None,
    selection: list[str] | None = None,
):
    fig, ax = plt.subplots(1, rows)
    fig.suptitle(super_title)

    if rows > 1:
        if not subtitles:
            raise ValueError("Subtitles were not declared.")
        for axes in ax:
            _line_plot(
                axes,
                df.loc[next(info_iter), next(info_iter)].T,
                next(subtitles),
                selection,
            )
    else:
        _line_plot(ax, df.loc[next(info_iter), next(info_iter)].T, countries=selection)

    plt.show()


def grid_plot(df: pd.DataFrame, countries: list[str], years: list[str], title: str):
    fig, ax = plt.subplots(3, 3)
    maximum = df.loc[countries, years].max().max()

    fig.suptitle(title)

    info_iter = iter(countries)

    for row in ax:
        for axes in row:
            country = next(info_iter)
            axes.plot(df.loc[country, years], label=country)
            axes.set_title(country)
            axes.set_xticks(years[::6])
            axes.set_ylim(0, maximum)
            axes.grid(axis="y")
            axes.spines[["left", "right", "top", "bottom"]].set_visible(False)

    plt.show()


def part_1():
    df = pd.read_csv("country_populations.csv", index_col=0)
    # print(df.head())

    """
    Two line plots:
        Populations of India, China and USA (1960~2023)
        Populations of USA, Pakistan, Indonesia, Nigeria, Brazil, Bangladesh (1960~2023)
    """

    countries1 = ["United States", "China", "India"]
    countries2 = [
        "United States",
        "Indonesia",
        "Pakistan",
        "Nigeria",
        "Brazil",
        "Bangladesh",
    ]

    info_iter: Generator[list[str]] = (
        info
        for info in (
            countries1,
            [f"{number}" for number in range(1960, 2024)],
            countries2,
            [f"{number}" for number in range(1960, 2024)],
        )
    )
    subtitles = (
        title for title in ("Population (in Billions)", "Population (in Millions)")
    )

    line_plots(
        df,
        info_iter,
        "Population in Large Countries is shrinking (1960-2023)",
        rows=2,
        subtitles=subtitles,
    )

    """ Percent Change Data Frame Plots
    """

    pct_change_df = df.T.pct_change(fill_method=None).T

    countries2.remove("United States")
    countries = countries1 + countries2 + ["Mexico"]
    years = [str(number) for number in range(1970, 2024)]

    info_iter2: Generator[list[str]] = (info for info in (countries, years))

    line_plots(
        pct_change_df,
        iter(info_iter2),
        "Population growth is slowing in larger countries (1970-2023)",
        selection=countries1,
    )

    grid_plot(
        pct_change_df, countries, years, "Populations in 12 Countries (1970-2023)"
    )


def hist_plot(df: pd.DataFrame):
    _, ax = plt.subplots(1, 3)
    bin_sizes: Generator[int] = (bin_size for bin_size in (1, 2, 5))

    for axes in ax:
        bin_size = next(bin_sizes)
        sns.histplot(df, ax=axes, binwidth=bin_size, kde=True)
        axes.set_xlabel("Average Temperature (Celsius)")
        axes.set_ylabel("Number of Days")
        axes.set_title(f"Bin size: {bin_size}")
        axes.lines[0].set_color("black")

    plt.show()


def kde_plot(data: dict[str, pd.DataFrame], title: str):
    fig, ax = plt.subplots(1, 1)
    # print(data)
    # print(years)

    colors: Generator[str] = (
        color for color in ("tab:orange", "tab:blue", "tab:green", "tab:red")
    )

    for year, df in data.items():
        # print(year)
        sns.kdeplot(df["meantemp"], ax=ax, color=next(colors), label=year)

    ax.set_xlabel("Average Temperature (Celsius)")
    ax.legend()
    ax.set_title(title)

    plt.show()


def part_2():
    df_temps = pd.read_csv("DailyDelhiClimateTrain.csv")

    hist_plot(df_temps.meantemp.T)

    date_dict_all = {}

    for date, temp in zip(df_temps.date.values, df_temps.meantemp.values):
        date_dict_all[datetime.strptime(date.split()[0], "%Y-%m-%d")] = temp

    unformated_years = {2013: {}, 2014: {}, 2015: {}, 2016: {}}
    formated_years = {}

    for day in date_dict_all:
        year = day.year
        if year in unformated_years:
            unformated_years[year][day] = date_dict_all[day]

    for year in unformated_years:
        formated_years[year] = pd.DataFrame.from_dict(
            unformated_years[year], orient="index", columns=["meantemp"]
        )

    kde_plot(formated_years, "Propensity of temperatures accross the years")


if __name__ == "__main__":
    part_1()
    part_2()
