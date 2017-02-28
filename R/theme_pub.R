#' theme_pub
#'
#' @param base_size Font size for graphs. Defaults to 14
#' @param base_family Font for graphs. Defaults to Helvetica
#'
#' @return
#' @export
#'
#' @examples
#' data(iris)
#' ggplot(iris, aes(x=Species, y=Sepal.Length)) + geom_point() + theme_pub()
theme_pub <- function(base_size = 14, base_family = "Helvetica") {
  theme(
    line =               element_line(colour = "black", size = 0.5, linetype = 1,
                                      lineend = "butt"),
    rect =               element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
    text =               element_text(family = base_family, face = "bold",
                                      colour = "black", size = base_size,
                                      hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9),
    axis.text =          element_text(size = rel(0.95), colour = "white"),
    strip.text =         element_text(size = rel(0.95), colour = "white"),

    axis.line =          element_blank(),
    axis.text.x =        element_text(vjust = 1),
    axis.text.y =        element_text(hjust = 1),
    axis.ticks =         element_line(colour = "black", size = 0.2),
    axis.title =         element_text(colour = "black"),
    axis.title.x =       element_text(vjust = 1),
    axis.title.y =       element_text(angle = 90),
    axis.ticks.length =  unit(0.3, "lines"),
    axis.ticks.margin =  unit(0.5, "lines"),

    legend.background =  element_rect(colour = NA),
    legend.margin =      unit(0.2, "cm"),
    legend.key =         element_rect(fill = "white", colour = "black"),
    legend.key.size =    unit(1.2, "lines"),
    legend.key.height =  NULL,
    legend.key.width =   NULL,
    legend.text =        element_text(size = rel(0.8), colour = "black"),
    legend.text.align =  NULL,
    legend.title =       element_text(size = rel(0.8), face = "bold", hjust = 0, colour = "black"),
    legend.title.align = NULL,
    legend.position =    "right",
    legend.direction =   "vertical",
    legend.justification = "center",
    legend.box =         NULL,

    panel.background =   element_rect(fill = "white", colour = NA),
    panel.border =       element_rect(fill = NA, colour = "black"),
    panel.grid.major =   element_line(colour = "grey20", size = 0.2),
    panel.grid.minor =   element_line(colour = "grey5", size = 0.5),
    panel.margin =       unit(0.25, "lines"),

    strip.background =   element_rect(fill = "grey30", colour = "grey10"),
    strip.text.x =       element_text(),
    strip.text.y =       element_text(angle = -90),

    plot.background =    element_rect(colour = "white", fill = "white"),
    plot.title =         element_text(size = rel(1.2)),
    plot.margin =        unit(c(1, 1, 0.5, 0.5), "lines"),

    complete = TRUE
  )
}
