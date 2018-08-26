#' Button to execute the takeSnapshot() button
#'
#' @author Emelie Hofland, \email{emelie_hofland@hotmail.com}
#'
#' @examples
#' snapshotButton()
#' 
#' @export
#' 

snapshotButton <- function(){
  HTML('<input type=button value="Take Snapshot" onClick="take_snapshot()">')
}