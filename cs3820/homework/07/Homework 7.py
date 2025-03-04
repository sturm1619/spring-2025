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

# # Homework 7 (Gathering and Preparing Data for Visualization)
#

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# ### Problem 1 (2 points)
#
# Write a Python script to download the HTML from https://en.wikipedia.org/wiki/2024_Summer_Olympics_medal_table
#
# Read the olympic medals table into a Pandas dataframe from the HTML file and show the top ten rows

# +
# Data Discovery:
# dfs = pd.read_html("https://en.wikipedia.org/wiki/2024_Summer_Olympics_medal_table")
# len(dfs)
# for i, df in enumerate(dfs):
#     print(i, df.columns)

# For simplicity, I'm directly storing the medal's table, ignoring all other data
data_2024 = pd.read_html("https://en.wikipedia.org/wiki/2024_Summer_Olympics_medal_table")[3]

data_2024.head(n = 10)
# -

# ### Problem 2 (3 points)
#
# Repeat the previous exercise with the 2020 Summer Olympics medal table, available at https://en.wikipedia.org/wiki/2020_Summer_Olympics_medal_table 
#
# **Combine** the 2024 and 2020 olympics tables into a single dataframe 
# * Keep a column for the country name (no need to keep the Rank column) 
# * **Add** medal counts together between years for the same country (add Gold to Gold, Silver to Silver, etc.) 
# * Check for duplicate country names that could have small variations in spelling / presentation between tables
#
# Some things to be aware of
# * Each table has a "Totals" row that should be removed
# * Decorators like * and ‡ after country names may vary from year to year
# * Any null values for medal counts can be replaced with 0 

# +
# Data Discovery:
# data = pd.read_html("https://en.wikipedia.org/wiki/2020_Summer_Olympics_medal_table")
# len(data)
# for table in data[1]:
#     print(table.columns)
# data[3] # <- The right table

raw_data = [
    pd.read_html("https://en.wikipedia.org/wiki/2024_Summer_Olympics_medal_table")[3],
    pd.read_html("https://en.wikipedia.org/wiki/2020_Summer_Olympics_medal_table")[3]
]

# For this transformation, I created a new dataframe object with NOC as index and dropping the Rank column
from re import match
def simplify_NOC(entry):
    simplified = match(r"\w*(\s\w*)*", entry)
    return simplified[0] if simplified else simplified
    
cleaned_data = []
for table in raw_data:
    temp = table.drop(columns="Rank")
    temp["NOC"] = temp.NOC.apply(simplify_NOC)
    cleaned_data.append(temp.set_index("NOC"))

transformed_data = cleaned_data[0].add(cleaned_data[1], fill_value=0)
transformed_data
# -

# ### Problem 3 (3 points)
#
# Continue the previous exercise, but download and join together all Summer Olympic medal tables from 2000 to 2024. 
# * Links to medal tables are available here:  https://en.wikipedia.org/wiki/Category:Summer_Olympics_medal_tables 
#
# Be mindful of slight variations from year to year, including things like
# * Column names of tables
# * Changes in country name (e.g. Russia to ROC) 

# +
raw_data = {
    year: pd.read_html(f"https://en.wikipedia.org/wiki/{year}_Summer_Olympics_medal_table")[3]
        for year in range(2000,2025,4)
}
# for data in raw_data.values():
#     print(data.columns)

from re import match
def simplify_NOC(entry):
    simplified = match(r"\w*(\s\w*)*", entry)
    return simplified[0] if simplified else simplified

cleaned_data = []
for table in raw_data.values():
    temp = table.drop(columns="Rank")
    if "NOC" in table.columns:
        temp["NOC"] = temp.NOC.apply(simplify_NOC)
        cleaned_data.append(temp.set_index("NOC"))
    else:
        temp["NOC"] = temp.Nation.apply(simplify_NOC).drop(columns="Nation")
        cleaned_data.append(temp.set_index("NOC"))

transformed_data = pd.DataFrame()
for cleaned_year_data in cleaned_data:
    transformed_data.add(cleaned_year_data, fill_value=0)

transformed_data
# -

# ### Problem 4 (2 points)
#
# Using the data table created in problem 3, create two visualizations (following visualization best practices):
# 1. Display the top 5 countries by **total** medal count
# 2. Display the top 5 countries by **gold** medal count 
#



# ### Bonus Problem (2 points)
#
# Using the data tables gathered from problems 1 to 3, create two additional visualizations (follwing best practices):
# 1. Show the trends in **total** medal count of the top 5 countries (problem 4 part 1) from 2000 to 2024
# 2. Show the trends in **gold** medal count of the top 5 countries (problem 4 part 2) from 2000 to 2024


