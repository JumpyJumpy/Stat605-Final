file = read.csv(text = readLines("./used_cars_data.csv", n = 10000))
file$make_name = factor(file$make_name)
sort(table(file$make_name), decreasing = T)
which(colnames(file) == "make_name")
