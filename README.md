# shinywebcam

_Basic integration of webcamjs into R shiny, to open the webcam, show the webcam output and make snapshots._

## About Webcamjs
This package is an integration of [jhuckaby's webcamjs](https://github.com/jhuckaby/webcamjs), an HTML5 Webcam Image Capture Library with Flash Fallback.

## Installation
To install, run:

``` 
if (!require(devtools)) {
  install.packages('devtools')
}
devtools::install_github('Emelieh21/shinywebcam')
```

## Usage
For usage, see example app:

```
library(shiny)
library(shinywebcam)

ui <- fluidPage(
  startWebcam(width = 320, height = 240, quality = 100),
  snapshotButton(),
  takeSnapshot()
)
server <- function(input, output){}
shinyApp(ui,server)
```
