import pandas as pd

cars = pd.read_csv("cars_splited.csv", low_memory = False)
cars["make_name"].value_counts()
cars[cars["price"] > cars["price"].quantile(0.99)]["make_name"].value_counts()

