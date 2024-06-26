#' draw_label_phase
#'
#' drawing function
#'
#' @param core_frame fxl object
#' @param current_layer layer to be drawn
#' @param facet_name name of facet
#'
#' @author Shawn Gilroy <sgilroy1@@lsu.edu>
#'
#' @returns nothing, run for side effects
#'
#' @export
draw_label_phase <- function(core_frame, current_layer, facet_name) {
  if (!is.na(facet_name) &&
      !is.na(current_layer$facet) &&
      current_layer$facet == facet_name) {
    for (lindex in seq_len(length(current_layer$labels))) {
      label <- names(current_layer$labels)[lindex]

      current_label <- current_layer$labels[[lindex]]

      label <- ifelse(
        is.null(label),
        current_label, label
      )

      temp_x <- ifelse(
        "x" %in% names(current_label),
        current_label[["x"]], current_layer$x
      )

      temp_y <- ifelse(
        "y" %in% names(current_label),
        current_label[["y"]], current_layer$y
      )

      font_c <- ifelse(
        "font" %in% names(current_label),
        current_label[["font"]], current_layer$face
      )

      srt <- ifelse(
        "srt" %in% names(current_label),
        current_label[["srt"]], 0
      )

      adj <- ifelse(
        "adj" %in% names(current_label),
        current_label[["adj"]], current_layer$adj
      )

      cex <- ifelse(
        "cex" %in% names(current_label),
        current_label[["cex"]], current_layer$cex
      )

      temp_color <- ifelse(
        "color" %in% names(current_label),
        current_label[["color"]], current_layer$color
      )

      temp_label <- ifelse(
        "label" %in% names(current_label),
        current_label[["label"]], label
      )

      text(
        x      = temp_x,
        y      = temp_y,
        cex    = cex,
        adj    = adj,
        font   = font_c,
        col    = temp_color,
        srt    = srt,
        labels = temp_label
      )
    }
  }

  if (is.na(facet_name)) {
    for (lindex in seq_len(length(current_layer$labels))) {
      label <- names(current_layer$labels)[lindex]

      current_label <- current_layer$labels[[lindex]]

      label <- ifelse(
        is.null(label),
        current_label, label
      )

      temp_x <- ifelse(
        "x" %in% names(current_label),
        current_label[["x"]], current_layer$x
      )

      temp_y <- ifelse(
        "y" %in% names(current_label),
        current_label[["y"]], current_layer$y
      )

      font_c <- ifelse(
        "font" %in% names(current_label),
        current_label[["font"]], current_layer$face
      )

      srt <- ifelse(
        "srt" %in% names(current_label),
        current_label[["srt"]], 0
      )

      adj <- ifelse(
        "adj" %in% names(current_label),
        current_label[["adj"]], current_layer$adj
      )

      cex <- ifelse(
        "cex" %in% names(current_label),
        current_label[["cex"]], current_layer$cex
      )

      temp_color <- ifelse(
        "color" %in% names(current_label),
        current_label[["color"]], current_layer$color
      )

      temp_label <- ifelse(
        "label" %in% names(current_label),
        current_label[["label"]], label
      )

      text(
        x      = temp_x,
        y      = temp_y,
        cex    = cex,
        adj    = adj,
        font   = font_c,
        col    = temp_color,
        srt    = srt,
        labels = temp_label
      )
    }
  }
}
