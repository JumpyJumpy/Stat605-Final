# Stat 605 Final Project

## Data Description
Our data set comes from https://www.kaggle.com/ananaymital/us-used-cars-dataset , the dataset contains details of 3 million real used cars. We want to use these data, that is, all kinds of information about used cars, to build the model and predict the price of used cars. To assure randomness, we split the dataset into ten subsets based on the last digit of the zip code provided in each row.

### Dependent Variable：
- price: Sale price of the vehicle on the website.
### Predicator Variables:
Basic information of the vehicle
#### Brand
- make_name: Vehicle's brand.
#### Appearance
- exterior_color: Exterior color of the vehicle, usually a fancy one same as the brochure.
- interior_color: Interior color of the vehicle, usually a fancy one same as the brochure.
#### Capacity
- back_legroom: Legroom in the rear seat measured in inches.
- front_legroom: The legroom in inches for the passenger seat.
- body_type: Body Type of the vehicle. Like Convertible, Hatchback, Sedan, etc.
- maximum_seating: Total number of seats.
#### Engine
- engine_type: The engine configuration. Eg: I4, V6, etc.
#### Transmission
- transmission: Type of transmission, such as Automatic, Manual, etc.
- transmission_display: Number of gears and type of transmission.
#### Wheel
- wheel_system: Traction system of a vehicle, such as AWD or FWD.
- wheelbase: The distance between the front and rear axles of a vehicle.
#### Torque
- torque: Torque indicates the force to which the drive shaft is subjected. Also the revolutions needed to reach the maximum torque.
#### Power and fuel
- horsepower: Horsepower is the power produced by an engine.
- combine_fuel_economy: Combined fuel economy is a weighted average of City and Highway fuel economy in km per litre..
- fuel_tank_volume: Fuel tank's filling capacity in gallons.
- fuel_type: Dominant type of fuel ingested by the vehicle.
#### Loss of Vehicle
- has_accidents: Whether the vin has any accidents registered.
- vehicle_damage_category: Category of a vehicle's damage, such as Category A meaning a ‘Scrap’ car.
- year: The year the car was built.
- is_new: If True means the vehicle was launched less than 2 years ago.
- theft_title: Vehicle that was stolen and later recovered.
#### Certificate
- is_certified: Whether the vehicle is certified. Certified cars are covered through warranty period.

## Statistical Methods:
After performing feature engineering processing on the variables, we use multiple linear regression model to predict the price of cars.

## Computational Steps
1. Data-Preprocessing and feature engineering
    1. Use common sense to filter variables that are not related to car prices. 
    2. Deal with missing values and outliers.
    3. delete the columns with high multi-collinearity.
    4. Use label encoding and one-hot encoding to transform the categorical variables.
2. Split the data based on the last digit of zipcode
3. Run parallel jobs to fit the data with MLR models
4. Average the coefficients after we get the result of 10 separate models.
