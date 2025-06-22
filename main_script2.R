# main_script2.R




# Make sure working directory is the same as the script location (implicitly handled in GitHub Actions)
# Print working directory
cat("Working directory:", getwd(), "\n")

# Set up and confirm output folder
output_dir <- file.path(getwd(), "outputs/script2")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

# Confirm contents before saving
print("Files in 'outputs' before saving:")
print(list.files("outputs", recursive = TRUE))

# Save dummy test file just to verify
writeLines("test", file.path(output_dir, "test.txt"))




# Load the helper script
source("RD_and_DT_Algorithm_copy.R")  # Ensure this file is in the same directory

results_0 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 0

for (i in 1:100) {
  set.seed(i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_0[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_0, file.path(output_dir, "data_75_2_0.rds"))




results_05 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 0.5

for (i in 1:100) {
  set.seed(100+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_05[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_05, file.path(output_dir, "data_75_2_05.rds"))




results_1 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 1

for (i in 1:100) {
  set.seed(200+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_1[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_1, file.path(output_dir, "data_75_2_1.rds"))



results_15 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 1.5

for (i in 1:100) {
  set.seed(300+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_15[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_15, file.path(output_dir, "data_75_2_15.rds"))



results_2 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 2

for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_2[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_2, file.path(output_dir, "data_75_2_2.rds"))



results_25 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 2.5

for (i in 1:100) {
  set.seed(500+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_25[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_25, file.path(output_dir, "data_75_2_25.rds"))





results_3 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 3

for (i in 1:100) {
  set.seed(600+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_3[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_3, file.path(output_dir, "data_75_2_3.rds"))



results_35 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 3.5

for (i in 1:100) {
  set.seed(700+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_35[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_35, file.path(output_dir, "data_75_2_35.rds"))




results_4 <- data.frame(
  Run = integer(),
  Lambda = numeric(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

lambda <- 4

for (i in 1:100) {
  set.seed(800+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 100, no_o = 100)
  result <- ACS_Alg_M(obs_gen_para, k = 2, lambda)
  
  results_4[i, ] <- list(
    Run = i,
    Lambda = lambda,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
  )
}

saveRDS(results_4, file.path(output_dir, "data_75_2_4.rds"))



# Combine all results into one table
results <- rbind(results_0, results_05, results_1, results_15,
                 results_2, results_25, results_3, results_35, results_4)

# Format output
results_out <- data.frame(
  Index = paste0('"', 1:nrow(results), '"'),  # Quoted index
  results[, c("Lambda", "Length", "Cost", "NumDisambigs")]  # Make sure column names match
)

# Define the custom header (space-separated, quoted)
header <- '"lambda" "length" "cost" "number_of_disambiguations"'

# Define output path
txt_path <- file.path(output_dir, "results_ACS2_clutter.txt")

# Write header manually
writeLines(header, txt_path)

# Append data
write.table(
  results_out,
  file = txt_path,
  append = TRUE,
  row.names = FALSE,
  col.names = FALSE,
  quote = FALSE,
  sep = " "
)

cat("✅ Text results saved to:", txt_path, "\n")
