#set page(flipped: true)
#set align(center + horizon)

#text(size: 32pt, fill: blue, weight: "bold")[Report on Project Read]

#text(
  "Carlos Rubio, Tatiana Cativo, Gordon Poole",
  // font: "New Computer Modern Math",
  size: 18pt,
  fill: navy,
  // style: "italic",
  weight: "semibold",
)

#text(
  datetime.today().display("[weekday], [month repr:long] [day], [year]"),
  size: 14pt,
)


#pagebreak()
#set align(left + top)

= Summary

#set text(size: 14pt)

Our team has been trying to keep with classees while making progress on the
data exploration project. So far, we’ve been working with small datasets that
include aggregated data on ethnicity and gender. Most of our time has gone into
cleaning and transforming the data to make sure it's usable. Since the project
owner hasn’t given a clear direction on what specific analyses they want, we’ve
focused on getting the dataset in good shape so it’s ready for different types
of exploration later on.

Our next inmediate goal is to try to concretize more of what visualizations
have potential to convince investors about the nature and impact of the
project, and ask for more data that could be used.

Some ideas data that we could collect and which of statistics to show:

- Completion rates, including demography data.
- Attendance.

- Impact of literacy on economy.
-

Ideas on how to improve current graph:

+ Make the city-student data a choropleth of data.
+ Use discrete charts instead of barcharts.

#pagebreak()

= Visuals

#figure(image("./city.png"))
#figure(image("./gender.png"))
#figure(image("./gender_pie.png"))
#figure(image("./latino.png"))
#figure(image("./latino_pie.png"))
#figure(image("./race.png"))
