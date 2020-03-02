library(xaringanthemer)


# colours inspired by
kiki <- ghibli::ghibli_palettes[c("KikiLight")]

slpal <- list(red = "#d51d5e",
             orange = "#ffc358",
             blue = "#00CFFF",
             tan = "#D0C1AA",
             light_blue = "#C0DDE1",
             light_tan = "#F2E4DA",
             light_orange = "#fdf4ac",
             light_red = "#D98594",
             pale_blue = "#86C2DA",
             pale_tan = "#fff4dc",
             pale_orange = "#E7C99E",
             pale_red = "#E3A1B8")

write_xaringan_theme(
  text_color = slpal$blue,
  text_font_size = "30px",
  text_bold_color = slpal$light_red,
  text_slide_number_color = "#125972",
  text_slide_number_font_size = "0.7em",
  
  padding = "1em 2em 1em 2em",
  
  header_color = slpal$blue,
  
  background_color = slpal$pale_tan,
  link_color = slpal$pale_orange,
  
  code_highlight_color = slpal$pale_orange,
  code_inline_color = slpal$pale_red,
  code_font_size = "0.9em",
  
  inverse_background_color = slpal$light_tan,
  inverse_header_color = slpal$pale_blue,
  inverse_text_color = slpal$pale_blue,
  
  blockquote_left_border_color = slpal$light_orange,
  
  footnote_font_size = "0.5em",
  footnote_position_bottom = "4em",
  
  # text_font_google = google_font("Raleway", "300", "300i"),
  text_font_google = google_font("Open Sans", "300", "300i"),
  header_font_google = google_font("Montserrat"),
  code_font_google = google_font("Fira Mono"),
  
  outfile = "saltheme.css"
  
)

extra_css <- list(
  ".red"   = list(color = "red"),
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
  
  "div.my-footer" = list("background-color" = slpal$light_blue,
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
