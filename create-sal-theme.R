library(xaringanthemer)

t10 <- c(
  "#4c78a8",
  "#f58518",
  "#e45756",
  "#72b7b2",
  "#54a24b",
  "#eeca3b",
  "#b279a2",
  "#ff9da6",
  "#9d755d",
  "#bab0ac",
  "#000000",
  "#FFFFFF"
)



slpal <- t10
names(slpal) <- c("blue", "orange", 
                  "red", "lightblue", "green",
                  "yellow", "purple", "pink", "brown", 
                  "grey", "black", "white")
  
write_xaringan_theme(
  text_color = slpal[["blue"]],
  text_font_size = "30px",
  text_bold_color = slpal[["red"]],
  text_slide_number_color = slpal[["purple"]],
  text_slide_number_font_size = "0.7em",
  
  padding = "1em 2em 1em 2em",
  
  header_color = slpal[["blue"]],
  
  background_color = slpal[["white"]],
  link_color = slpal[["green"]],
  
  code_highlight_color = slpal[["orange"]],
  code_inline_color = slpal[["red"]],
  code_font_size = "0.9em",
  
  inverse_background_color = slpal[["black"]],
  inverse_header_color = slpal[["lightblue"]],
  inverse_text_color = slpal[["lightblue"]],
  
  blockquote_left_border_color = slpal[["orange"]],
  
  footnote_font_size = "0.5em",
  footnote_position_bottom = "4em",
  
  # text_font_google = google_font("Raleway", "300", "300i"),
  text_font_google = google_font("Open Sans", "300", "300i"),
  header_font_google = google_font("Montserrat"),
  code_font_google = google_font("Fira Mono"),
  
  outfile = "saltheme.css"
  
)

extra_css <- list(
  ".red"   = list(color = slpal[["red"]]),
  ".blue" = list(color = slpal[["blue"]]),
  ".small" = list("font-size" = "80%"),
  ".tiny" = list("font-size" = "60%"),
  ".large" = list("font-size" = "150%"),
  ".vlarge" = list("font-size" = "200%"),
  ".huge" = list("font-size" = "250%"),
  ".vhuge" = list("font-size" = "350%"),
  ".full-width" = list(
    display = "flex",
    width   = "100%",
    flex    = "1 1 auto"
  ),
  ".left-code" = list("width" = "38%",
                      "height" = "92%",
                      "float" = "left"),
  ".right-plot" = list("width" = "60%",
                       "float" = "right",
                       "padding-left" = "1%"),
  ".pull-left" = list("float" = "left",
                      "width" = "47%"),
  ".pull-right" = list("float" = "right",
                       "width" = "47%"),
  
  "div.my-footer" = list("background-color" = "#86C2DA",
                         "position" = "absolute",
                         "bottom" = "0px",
                         "left" = "0px",
                         "height" = "40px",
                         "width" = "100%"),
  
  "div.my-footer span" = list("font-size" = "16pt",
                              "color" = "#125972",
                              "position" = "absolute",
                              "left" = "20px",
                              "bottom" = "10px")

)

write_extra_css(extra_css, outfile = "extra.css")
