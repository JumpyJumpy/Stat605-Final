import pandas as pd

cars = pd.read_csv("cars_splited.csv", low_memory = False)
brands = cars["make_name"].value_counts()[0:5].index.tolist()
brands.extend(cars[cars["price"] > cars["price"].quantile(0.99)]["make_name"].value_counts()[0:5].index.tolist())


pd.set_option("display.max_columns", None)
cars = pd.read_csv("cars_splited.csv", low_memory = False)
cars = cars[cars["make_name"].isin(brands)]
cars = cars.drop(["vehicle_damage_category", "is_certified", "combine_fuel_economy"], axis = 1)

for brand in brands:
    cars[cars["make_name"] == brand].to_csv(f"./brand/cars_{brand}.csv")
