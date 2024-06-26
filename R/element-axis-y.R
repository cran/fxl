#' yoverride
#'
#' Override the y axis (or axes) limits
#'
#' @param core_frame fxl object
#' @param var from base
#' @param ydelta skips between ticks (can override)
#' @param ydraws specify axes manual
#' @param yticks tick values (numerical)
#' @param ytickslabs tick labels
#'
#' @author Shawn Gilroy <sgilroy1@@lsu.edu>
#'
#' @returns nothing, run for side effects
#'
#' @export
scr_yoverride <- function(core_frame,
                          var,
                          ydelta = 1,
                          yticks = NULL,
                          ydraws = NULL,
                          ytickslabs = NULL) {

  # Null check
  if (is.null(var)) {
    stop(paste("scr_yoverride: cannot be set to a null value."))
  }

  # Check if a vector and not multi-facet list
  if (is.vector(var) && !is.list(var)) {
    isValidNumericVector(
      object = var,
      length = 2,
      name = "scr_yoverride"
    )

    core_frame$dims[["global.min.y"]] <- {{ var[1] }}
    core_frame$dims[["global.max.y"]] <- {{ var[2] }}
  } else {
    core_frame$dims[["local.dims"]] <- var
  }

  core_frame$dims[["yticks"]] <- yticks

  if (!is.null(ytickslabs)) {
    isValidCharacterVector(
      object = ytickslabs,
      name = "ytickslabs"
    )
  }
  core_frame$dims[["yticklabs"]] <- ytickslabs

  if (!is.null(ydraws)) {
    isValidCharacterVector(
      object = ydraws,
      name = "ydraws"
    )
  }

  core_frame$dims[["ydraws"]] <- ydraws

  assert_input_type(ydelta, "numeric", "ydelta")
  core_frame$dims[["ydelta"]] <- ydelta

  core_frame
}
