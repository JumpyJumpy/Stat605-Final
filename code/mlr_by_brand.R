args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 2) {
    file <- as.character(args[1])
} else {
    cat("ERROR\n", file = stderr())
    stop()
}

header <- colnames(read.csv("header.csv"))
dataset <- read.csv(file, header = F)
colnames(dataset) <- header

mlr_by_brand <- lm(price ~. - make_name)
mlr_summary <- summary(mlr_by_brand)
print(mlr_summary)