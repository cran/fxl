#' xlabel
#'
#' Override the x axis label
#'
#' @param core_frame fxl object
#' @param var string
#' @param color from base
#' @param cex from base
#' @param adj from base
#' @param face like 'font' from base
#' @param line line width
#'
#' @author Shawn Gilroy <sgilroy1@@lsu.edu>
#'
#' @returns nothing, run for side effects
#'
#' @export
scr_xlabel <- function(core_frame,
                       var,
                       color = "black",
                       cex = 1,
                       adj = 0.5,
                       face = 1,
                       line = 0) {

  assert_input_type({{ var }}, "character", "xlab")
  core_frame$labs[["xlab"]] <- {{ var }}

  assert_input_type(color, "character", "color")
  core_frame$labs[["xlab_color"]] <- color

  assert_input_type(cex, "numeric", "cex")
  core_frame$labs[["xlab_cex"]] <- cex

  assert_input_type(adj, "numeric", "adj")
  core_frame$labs[["xlab_adj"]] <- adj

  assert_input_type(face, "numeric", "face")
  core_frame$labs[["xlab_face"]] <- face

  isValidNumericVector(
    object = line,
    name = "line"
  )

  core_frame$labs[["outer.x.line"]] <- line

  core_frame
}
