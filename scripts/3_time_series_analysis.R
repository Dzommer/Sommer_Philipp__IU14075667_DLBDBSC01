# Installiere erforderliche Pakete, falls notwendig
if (!require(ggplot2)) install.packages("ggplot2")

# Erstellen der Zeitreihe für die Breitbandabdeckung
ggplot(broadband_data_clean, aes(x=year, y=broadband_access, group=country, color=country)) +
  geom_line() +
  ggtitle("Breitbandabdeckung in verschiedenen Ländern") +
  xlab("Jahr") + ylab("Breitbandzugang (%)") +
  theme_minimal()

# Speichern des Plots
ggsave("output/broadband_time_series_plot.png")

