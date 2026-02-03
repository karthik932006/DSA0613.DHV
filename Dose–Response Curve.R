set.seed(123)

time_df <- data.frame(
  Date = seq.Date(
    from = as.Date("2022-01-01"),
    by = "month",
    length.out = 24
  ),
  Sales_A = cumsum(rnorm(24, 10, 5)),
  Sales_B = cumsum(rnorm(24, 8, 4))
)
dose_df <- data.frame(
  Dose = 1:20,
  Response = cumsum(rnorm(20, 2, 1))
)

ggplot(dose_df, aes(x = Dose, y = Response)) +
  geom_line()
