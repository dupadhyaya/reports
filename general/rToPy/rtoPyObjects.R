
# R to Python


library(arrow)

mtcarsDF <- mtcars
file <- "/Users/du/dup/auData/pyData/mtcarsDF.parquet"

arrow::write_parquet( mtcarsDF,  file )

file.exists(file)
