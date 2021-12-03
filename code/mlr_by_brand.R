args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 2) {
    file <- as.character(args[1])
} else {
    cat("ERROR\n", file = stderr())
    stop()
}

header <- colnames(read.csv("header.csv"))
dataset <- read.csv("brand/cars_BMW.csv", header = FALSE, quote = "", na.strings = c("", "--", "NA", "NaN"), stringsAsFactors = TRUE)
colnames(dataset) <- header
summary(dataset)
dataset$combine_fuel_economy <- NULL

mlr_by_brand <- aov(price ~ . - make_name - dealer_zip, data = dataset)
# mlr_by_brand <- lm(price ~. - make_name - dearler_zip, data = dataset)
mlr_summary <- summary(mlr_by_brand)Å

sink(paste0("mlr_", file, ".txt"))
print(mlr_summary)
sink()
