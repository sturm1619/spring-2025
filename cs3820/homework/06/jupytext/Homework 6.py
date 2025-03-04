# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .py
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.16.7
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# # Homework 6 (distributions, statistical error, and scatter plots)
#
# For this homework assignment you are required to use Python (pandas, matplotlib, and seaborn) to do the exercises. Please write your own code and provide your code along with your responses to the questions.

import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

# ### Climate Data
#
# For this assignment we will continue visualizing the Delhi, India climate data set.
# * To get started, load the climate data provided on Canvas
# * Data source:  https://www.kaggle.com/datasets/sumanthvrao/daily-climate-time-series-data
#

df_temps = pd.read_csv("DailyDelhiClimateTrain.csv")
df_temps.head()

# ### Problem 1 (1.5 points)
#
# First, create a new column in `df_temps` that contains the name of the month ("January", "February", etc.) of the date for each row. Then visualize the average temperatures recorded in January in two ways:
# * Plot a density curve
# * Make a scatter plot (plot temperature along the x-axis, and use "jittering" to spread out the dots vertically)
#
# For the jittering, you may create your own randomness (e.g. sample from a uniform distribution), or use a built-in solution (e.g. seaborn stripplot -- https://seaborn.pydata.org/generated/seaborn.stripplot.html )

# +
# Your answer here
# -

df_temps["month"] = pd.to_datetime(df_temps.date).apply(lambda x: x.strftime("%B"))
january_data = df_temps[df_temps["month"] == "January"].meantemp
cloud = sns.kdeplot(january_data, fill=True)
cloud.set_title("Mean temperature in January")
cloud.set_xlabel("Mean temperature")

rain = sns.stripplot(january_data, jitter=True, orient="h")
rain.set_title("Mean temperature in January")
rain.set_xlabel("Mean temperature")
plt.show()


# ### Problem 2 (1.5 points)
#
# **(a)** Now combine these charts together to **make it rain!**
# * Plot the density curve, and place the scatter plot underneath
#   * Remove excess vertical whitespace between them, if necessary
# * Include the shading under the density curve
# * Remove all axis lines and units for the moment
# * Adjust the `alpha` value on the scatter plot so that there is some transparency between overlapping dots (alpha = 0.7 seems to work well)
# * **Be sure to use the same x-axis limits on both charts!**


# **(b)** Now let's do a little more design:
# * Use a vertical line to show the mean temperature for January
# * Color both charts using `coolwarm` color palette
#   * Set 0 as low and 40 as high
#   * Use the mean value / 40 as the fraction for the color palette
#
# **Note**:
# * https://matplotlib.org/stable/api/_as_gen/matplotlib.axes.Axes.axvline.html uses proportions for its boundary values (0 is min, 1 is max)
# * https://matplotlib.org/stable/api/_as_gen/matplotlib.axes.Axes.vlines.html#matplotlib.axes.Axes.vlines uses data coordinates
#


# ### Problem 3 (4 points)
#
# Use the previous problem to show temperature averages across all months:
# * Create 12 raincloud charts, 1 per month, and stack them vertically
# * Use the same low and high temperature on each chart (ranges from about 3 to about 42)
# * Use the same y-axis values on each density curve
# * Color each individual month according to the `coolwarm` color palette
#   * Use the mean temperature value for each month
#   * Compute the range of average temperatures to use as your interval (lowest average should map to about 0, and highest average should map to about 1)
# * Include the mean temperature line on each density curve
#
# Additional design elements:
# * Get rid of any extraneous legends, axis lines, box lines (spines), etc.
# * Plot a grid line at 0 for each density curve
# * Label the months on each chart
# * Get rid of excess vertical whitespace
# * Show units on x-axis once at the bottom of the figure
# * Create a figure title


# ### Problem 4 (3 points)
#
# Let's go back to the original data frame:

df_temps.head()

# **(a)** Create a scatter plot to plot `meantemp` against `humidity`. Include a line of best fit:
# *  https://numpy.org/doc/stable/reference/generated/numpy.polyfit.html


# **(b)** Update the scatter plot by coloring dots by season:
# * Use December, January, February as winter
# * Use March, April, May as spring
# * Use June, July, August as summer
# * Use September, October, November as fall


# **(c)** Finally, split the scatter plot into 4 individual charts:
# * Use a 2x2 grid, with one chart per season
# * Label the season for each individual chart
# * Use the same x and y coordinate ranges on each chart
# * Include an individual line of best fit for each chart
#
