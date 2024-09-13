# Entfernen von NA-Werten
broadband_data_clean <- na.omit(broadband_data)
spending_data_clean <- spending_data %>%
  mutate(spending_per_capita = household_spending / population)

# Normalisierung der Daten pro Kopf
spending_data_clean <- spending_data_clean %>%
  mutate(normalized_spending = spending_per_capita / max(spending_per_capita, na.rm = TRUE))

# Speichern der bereinigten Daten als CSV
write.csv(broadband_data_clean, "output/broadband_data_clean.csv")
write.csv(spending_data_clean, "output/spending_data_clean.csv")

