#' Function takes a snapshot with the webcam in a R Shiny App
#'
#' @author Emelie Hofland, \email{emelie_hofland@hotmail.com}
#'
#' @examples
#' takeSnapshot()
#' 
#' @export
#' 

takeSnapshot <- function(){
  HTML('<div id="results"></div>
       <script language="JavaScript">
       function take_snapshot() {
       // take snapshot and get image data
       Webcam.snap( function(data_uri) {
       // display results in page
       document.getElementById(\'results\').innerHTML =
       \'<img src="\'+data_uri+\'"/>\';
       } );
       }
       </script>')

       }

