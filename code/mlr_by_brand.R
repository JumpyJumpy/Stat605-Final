args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 1) {
    file <- as.character(args[1])
} else {
    cat("ERROR\n", file = stderr())
    stop()
}

brand <- gsub(pattern = ".*_(.*)\\.csv", x = file, replacement = "\\1")

mlr_results <- list()
dataset <- read.csv(file, na.strings = c("", "--", "NA", "NaN"), row.names = 1)
dataset$year <- 2021 - dataset$year
## summary(dataset)

write.csv(na.omit(dataset), "cars_nona.csv")
dataset_nona <- read.csv("cars_nona.csv", stringsAsFactors = TRUE, row.names = 1)
dataset_nona$make_name <- NULL
dataset_nona$dealer_zip <- NULL
dataset_nona$interior_color <- NULL
dataset_nona$exterior_color <- NULL
## summary(dataset_nona)

#mlr_by_brand <- stepwise(prirce ~., dataset_nona)
mlr_by_brand <- aov(price ~ ., data = dataset_nona)
mlr_summary <- summary(mlr_by_brand)


sink(paste0("mlr_result_", brand, ".txt"))
print(mlr_summary)
sink()
