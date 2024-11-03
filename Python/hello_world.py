# house_list = [
#     {
#     'amount_paid': 20000,
#     'no_of_rooms': 5,
#     'area': 182,
#     },
#     {
#     'amount_paid': 50000,
#     'no_of_rooms': 6,
#     'area': 190,
#     },
#     {
#     'amount_paid': 466000,
#     'no_of_rooms': 12,
#     'area': 500,
#     },
#     {
#     'amount_paid': 10000,
#     'no_of_rooms': 3,
#     'area': 100,
#     },
# ]


# for house in house_list:
#     house["price_per_m2"] = house["amount_paid"] / house["area"]

# house_list.append('price_per_m2')
# print(house_list[0:3])

# 2222222
# Declare `house_prices` as empty list

# Iterate through `houses_rowwise`

    # For each house, append "price_approx_usd" to `house_prices`

house_prices = []
for house in houses_rowwise:
    house_prices.append(house["price_approx_usd"])

# sum(house_prices), len(house_prices)

# Calculate `mean_house_price` using `house_prices`
mean_house_price = sum(house_prices) / len(house_prices)

# Print `mean_house_price` object type
print("mean_house_price type:", type(mean_house_price))

# Get output of `mean_house_price`
mean_house_price

# 333333333
# Declare variable `houses_columnwise`
houses_columnwise = {
    "price_approx_usd": [115910.26, 48718.17, 28977.56, 36932.27, 83903.51],
    "surface_covered_in_m2": [128.0, 210.0, 58.0, 79.0, 111.0],
    "rooms": [4.0, 3.0, 2.0, 3.0, 3.0],
}

# Print `houses_columnwise` object type
print("houses_columnwise type:", type(houses_columnwise))

# Get output of `houses_columnwise`
houses_columnwise

# 44444444

# Calculate `mean_house_price` using `houses_columnwise`
mean_house_price = sum(houses_columnwise["price_approx_usd"]) / len(houses_columnwise["price_approx_usd"])

# Print `mean_house_price` object type
print("mean_house_price type:", type(mean_house_price))

# Get output of `mean_house_price`
mean_house_price

# 5555555
price = houses_columnwise["price_approx_usd"]
area = houses_columnwise["surface_covered_in_m2"]

price_per_m2 = []
for p, a in zip(price, area):
    price_m2 = p / a
    price_per_m2.append(price_m2)

# Add "price_per_m2" key-value pair for `houses_columnwise`
houses_columnwise["price_per_m2"] = price_per_m2

# Print `houses_columnwise` object type
print("houses_columnwise type:", type(houses_columnwise))

# Get output of `houses_columnwise`
houses_columnwise

# pandas
# Import pandas library, aliased as `pd`
import pandas as pd

# Declare variable `df_houses`
df_houses = pd.DataFrame(houses_columnwise)

# Print `df_houses` object type
print("df_houses type:", type(df_houses))

# Print `df_houses` shape
print("df_houses shape:", df_houses.shape)

# Get output of `df_houses`
df_houses