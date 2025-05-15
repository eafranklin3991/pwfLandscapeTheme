# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Custom Theme for ggplot2
#'
#' @return A ggplot2 theme object.
#' @export
pwf_theme <- function() { theme(
  # Title and subtitle styles (centered at top)
  plot.title = element_text(color = "#000000", size = 18, family = "Arial", face = "bold", hjust = 0.5),
  plot.subtitle = element_text(color = "#000000", size = 14, family = "Arial", face = "bold", hjust = 0.5),

  # Axis title styles
  axis.title.x = element_text(color = "#000000", size = 14, family = "Arial"),
  axis.title.y = element_text(color = "#000000", size = 14, family = "Arial"),

  # Axis text (tick labels) styles
  axis.text.x = element_text(color = "#000000", size = 14, family = "Arial"),
  axis.text.y = element_text(color = "#000000", size = 14, family = "Arial"),

  # Only horizontal gridlines with specific thickness and color
  panel.grid.major.x = element_blank(),
  panel.grid.major.y = element_blank(),
  panel.grid.minor = element_blank(),

  # Remove background for a clean look
  panel.background = element_blank(),

  # Remove small axis ticks
  axis.ticks = element_blank(),

  # Axis line color
  axis.line = element_line(color = "#FFFFFF"),

  # Legend styles
  legend.position = "bottom",
  legend.justification = "center",
  legend.text = element_text(color = "#000000", size = 14, family = "Arial"),

  # Set title alignment to top center
  plot.title.position = "plot"
  )
}

#' Custom color scale for scatterplots
#'
#' @return A ggplot2 color scale.
#' @export
pwf_colors <- function() {
  scale_color_manual(values = c(
  "#075d9a", "#bae4bc", "#43a2ca", "#2685bb",
  "#7bccc4", "#022f58"
  ))
  }

#' Custom fill scale for scatterplots (if needed for filled points or areas)
#'
#' @return A ggplot2 fill scale.
#' @export
pwf_fill <- function() {
  scale_fill_manual(values = c(
  "#075d9a", "#bae4bc", "#43a2ca", "#2685bb",
  "#7bccc4", "#022f58"
  ))
  }

#' Custom theme for horizontal bar graphs
#'
#' @return A ggplot2 theme object optimized for horizontal bar charts.
#' @export
pwf_horizontal_bar_theme <- function() {
  theme(
  # Title and subtitle styles (centered at top)
  plot.title = element_text(color = "#000000", size = 18, family = "Arial", face = "bold", hjust = 0.5),
  plot.subtitle = element_text(color = "#000000", size = 14, family = "Arial", face = "bold", hjust = 0.5),

  # Axis title styles
  axis.title.x = element_text(color = "#000000", size = 14, family = "Arial"),
  axis.title.y = element_text(color = "#000000", size = 14, family = "Arial"),

  # Axis text (tick labels) styles
  axis.text.x = element_text(color = "#000000", size = 14, family = "Arial"),
  axis.text.y = element_text(color = "#000000", size = 14, family = "Arial"),

  # Only horizontal gridlines with specific thickness and color
  panel.grid.major.x = element_line(color = "#E6E6E6", size = 0.5),
  panel.grid.major.y = element_blank(),
  panel.grid.minor = element_blank(),

  # Remove background for a clean look
  panel.background = element_blank(),

  # Remove small axis ticks
  axis.ticks = element_blank(),

  # Axis line color
  axis.line = element_line(color = "#FFFFFF"),

  # Legend styles
  legend.position = "bottom",
  legend.justification = "center",
  legend.text = element_text(color = "#000000", size = 14, family = "Arial"),

  # Set title and subtitle alignment to top center
  plot.title.position = "plot"
  )
  }

#' Custom points layer for square markers
#'
#' This function creates a ggplot2 layer with square-shaped points.
#'
#' @param mapping Aesthetic mappings.
#' @param data The data to be displayed.
#' @param size Point size (default is 3).
#' @param ... Additional arguments passed to `geom_point()`.
#'
#' @return A ggplot2 layer for square-shaped points.
#' @export
pwf_points <- function(mapping = NULL, data = NULL, size = 3, ...) {
  geom_point(mapping = mapping, data = data, shape = 15, size = size, ...)
}



