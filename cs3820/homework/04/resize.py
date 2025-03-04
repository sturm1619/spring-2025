from PIL import Image

countries: tuple[str, ...] = tuple(
    "./flags/" + country + ".jpg" for country in ("ita", "new", "bel", "aus", "net")
)

for country in countries:
    break
