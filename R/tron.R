#' tron - Automatic Logging
#'
#' This package provides a one-liner way to enable/disable logging 
#' to a function, session, or an entire package.
#'
#' @author Neal Fultz \email{nfultz@@gmail.com}
#' @name tron
#' @aliases tron-package
#' @docType package
#' @seealso \code{\link{.tron.function}}, \code{\link{.tron.environment}}
NULL

#' @export
#' @param x an object
#' @param ... Arguments to be passed to methods.
#' @rdname tron
tron <- function(x=parent.frame(), ...){ .tron(x, ...) }
.tron <- function(x, ...) UseMethod(".tron")

#' @export
#' @rdname tron
troff <- function(x=parent.frame(), ...){ .troff(x, ...)}
.troff <- function(x, ...) UseMethod(".troff")

#' @rdname tron
#' @export
is.tron <- function(x=parent.frame())  identical(attr(x, "tron"), TRUE)

