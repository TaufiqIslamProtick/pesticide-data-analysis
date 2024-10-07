# acf_pacf_script.R

# Load necessary libraries
library(forecast)
library(tools)  # For file_path_sans_ext function

# Get command line arguments
args <- commandArgs(trailingOnly = TRUE)

# Check if the user provided a CSV file as a parameter
if (length(args) == 0) {
  stop("Please provide the CSV file as a parameter.")
}

# Read the CSV file from the first argument
csv_file <- args[1]
data <- read.csv(csv_file)

# Extract the 'y' column from the data
y <- data$y

# Get the base name of the input file without the extension
file_base_name <- file_path_sans_ext(basename(csv_file))

# Specify the name of the parameter (or column) you want to use in the title
param_name <- file_base_name  # You can change this if you have a different column

# Create the output PDF file name by appending the base name
#pdf_file <- paste0(file_base_name, "_acf_pacf_plots.pdf")
pdf_file <- file.path(args[2], paste0(file_base_name, ".pdf"))

# Open PDF device to save both plots
pdf(pdf_file, width = 12, height = 6)

# Set layout to display 2 plots side by side
par(mfrow = c(1, 2))

# Generate ACF plot with dynamic title
ggAcf(y, main = paste("ACF Plot for", param_name))

# Generate PACF plot with dynamic title
ggPacf(y, main = paste("PACF Plot for", param_name))

# Close PDF device
dev.off()

cat("ACF and PACF plots saved to", pdf_file, "\n")

