# Lineares Regressionsmodell
model <- lm(broadband_access ~ year, data = broadband_data_clean)

# Vorhersagen für die nächsten Jahre
future_years <- data.frame(year = c(2024, 2025))
predictions <- predict(model, newdata = future_years)

# Plot mit den Vorhersagen
ggplot(broadband_data_clean, aes(x=year, y=broadband_access)) +
  geom_line(color="blue") +
  geom_point(data=future_years, aes(x=year, y=predictions), color="red") +
  ggtitle("Prognose des Breitbandzugangs für 2024 und 2025") +
  xlab("Jahr") + ylab("Breitbandzugang (%)") +
  theme_minimal()

# Speichern des Plots
ggsave("output/regression_forecast.png")

