# Berechnung der Pearson-Korrelation
correlation <- cor(broadband_data_clean$broadband_access, spending_data_clean$normalized_spending)
print(paste("Korrelationskoeffizient:", round(correlation, 2)))

# Scatterplot erstellen
plot(broadband_data_clean$broadband_access, spending_data_clean$normalized_spending,
     xlab = "Breitbandzugang (%)", ylab = "Normierte Haushaltsausgaben",
     main = paste("Korrelation zwischen Breitbandzugang und Haushaltsausgaben:", round(correlation, 2)))

