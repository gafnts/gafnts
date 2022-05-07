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
