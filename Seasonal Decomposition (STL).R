# Increase length.out to 25
time_df <- data.frame(
  Date = seq.Date(from = as.Date("2022-01-01"), by = "month", length.out = 25),
  Sales_A = cumsum(rnorm(25, 10, 5))
)

sales_ts <- ts(time_df$Sales_A, frequency = 12)
plot(stl(sales_ts, s.window = "periodic"))
