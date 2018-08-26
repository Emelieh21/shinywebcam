#' Function that starts the webcam and shows webcam output in a Shiny app
#' @param width numeric, width of the webcam output
#' @param height numeric, height of the webcam output
#' @param quality numeric, for JPEG images, this is the desired quality, from 0 (worst) to 100 (best).
#'
#' @author Emelie Hofland, \email{emelie_hofland@hotmail.com}
#'
#' @examples
#' startWebcam(320,240,100)
#'
#' @export
#' 

startWebcam <- function(width,height,quality){
  paste8 <- function(..., sep = " ", collapse = NULL) {
    args <- c(
      lapply(list(...), enc2utf8),
      list(
        sep = if (is.null(sep)) sep else enc2utf8(sep),
        collapse = if (is.null(collapse)) collapse else enc2utf8(collapse)
      )
    )
    do.call(paste, args)
  }
  tags$head(
    tags$script(HTML(paste8(readLines(system.file("js/webcam.min.js", package = "shinywebcam"), warn = FALSE, encoding = "UTF-8"), collapse = "\r\n"))),
    HTML(paste0('<div id="my_camera"></div>
         <script language="JavaScript">
         Webcam.set({
         width: ',width,',
         height: ',height,',
         image_format: \'jpeg\',
         jpeg_quality: ',quality,'
         });
         Webcam.attach( \'#my_camera\' );
         </script>
         '))
  )
}
