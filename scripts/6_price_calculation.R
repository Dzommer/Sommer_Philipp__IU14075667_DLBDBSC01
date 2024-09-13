# Berechnung des Preises basierend auf den Haushaltsausgaben
base_price <- 12 # Basispreis in Deutschland
spending_data_clean <- spending_data_clean %>%
  mutate(price_in_country = base_price * (normalized_spending / spending_data_clean$normalized_spending[spending_data_clean$country == "Germany"]))

# Plot der Preiskalkulation
ggplot(spending_data_clean, aes(x=country, y=price_in_country)) +
  geom_bar(stat="identity", fill="blue") +
  coord_flip() +
  ggtitle("Preiskalkulation der App in verschiedenen Ländern") +
  xlab("Land") + ylab("Preis in €")

# Speichern des Plots
ggsave("output/price_comparison_plot.png")

