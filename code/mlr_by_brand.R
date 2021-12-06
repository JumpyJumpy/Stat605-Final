args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 1) {
    file <- as.character(args[1])
} else {
    cat("ERROR\n", file = stderr())
    stop()
}


brand <- c("Hyundai", "Chevrolet", "Ford", "Jeep", "BMW")
dataset <- read.csv("brand/cars_BMW.csv", na.strings = c("", "--", "NA", "NaN"), stringsAsFactors = TRUE, row.names = 1)
year <- 2021 - dataset$year
summary(dataset)


mlr_by_brand <- aov(price ~ . - make_name - dealer_zip, data = dataset)
# mlr_by_brand <- lm(price ~. - make_name - dearler_zip, data = dataset)
mlr_summary <- summary(mlr_by_brand)

sink(paste0("mlr_", file, ".txt"))
print(mlr_summary)
sink()
