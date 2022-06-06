# You want it darker theme

you_want_it_darker <- function(...) {
  theme(
    text = element_text(color = "#BFBFBF", size = 12),
    # Axis
    axis.text = element_text(color = "#BFBFBF"),
    axis.title.x = element_text(margin = unit(c(.6, 0, .2, 0), "cm")),
    axis.title.y = element_text(margin = unit(c(0, .6, 0, .2), "cm")),
    # Legend
    legend.background = element_rect(fill = "#2E2E2E"),
    legend.position = "bottom",
    # Panel
    panel.grid = element_line(color = "#2E2E2E"),
    # Backgrounds
    plot.background = element_rect(fill = "#2E2E2E", color = NA),
    panel.background = element_rect(fill = "#202020"),
    # Margin
    plot.margin = unit(c(.5, .5, .4, .2), "cm")
  )
}

# Gravity

theme_gravity <- function(...) {
  theme(
    text = element_text(color = "gray15",
                        family = "Helvetica Neue",
                        size = 19),
    # Axis
    axis.title = element_blank(),
    axis.text = element_text(color = "gray15"),
    axis.ticks = element_blank(),
    # Legend
    legend.title = element_blank(),
    legend.position = c(0.81, .92),
    legend.direction = "horizontal",
    legend.key = element_rect(fill = "white"),
    legend.background = element_rect(color = "gray15", size = 0.25),
    # Panel
    panel.background = element_rect(color = "gray15", fill = "white"),
    panel.grid = element_blank(),
    # Facets
    strip.background = element_rect(color = "gray15", fill = "gray15"),
    strip.text = element_text(color = "white"),
    # Margins
    plot.margin = unit(c(.5,0.1,.5,0.1), "cm")
  )
}
