import pandas as pd


brands = ["Hyundai", "Chevrolet", "Ford", "Jeep", "BMW"]

pd.set_option("display.max_columns", None)
cars = pd.read_csv("../cars_splited.csv", low_memory = False)
cars = cars[cars["make_name"].isin(brands)]
cars = cars.drop(["vehicle_damage_category", "is_certified", "combine_fuel_economy"], axis = 1)

for brand in brands:
    cars[cars["make_name"] == brand].to_csv(f"cars_{brand}.csv")
