#themes

#libraries
pacman::p_load(ggh4x, janitor, cowplot, tidytext)

#themesScales------
th1 = theme(plot.title = element_text(hjust=.5, face='bold', size=15), plot.subtitle = element_text(hjust=.1, color='grey35', size=10), strip.background = element_rect(fill="cyan", colour='black'), strip.text = element_text(face='bold', colour='black'))
sfg2_hl = scale_fill_gradient2(high='yellow', low='green', midpoint = 0, na.value = 'white')
sfg2_diff <- scale_fill_gradient2( low = "#D73027",mid = "white", high = "#1A9850",
                                   midpoint = 0,  na.value = "grey90")
sfg_count <- scale_fill_gradient( low = "#FFF4CC", high = "#173F5F", na.value = "grey90",  labels = scales::comma)
sfg_rate <- scale_fill_gradient2( low = "#E76F51",mid = "#FFF4CC",high = "#2A9D8F",
                                  midpoint = 0.5, limits = c(0, 1), labels = scales::percent,  na.value = "grey90")
library(ggh4x)
strip_2layer_x <- ggh4x::strip_nested(  background_x = ggh4x::elem_list_rect(  fill = c( "#173F5F",  "#26C6DA" ),colour = "black"), text_x = ggh4x::elem_list_text( colour = c("white", "black"), face = "bold",size = c(12, 10)  ),  by_layer_x = TRUE)
#use facet_nested(.. strip=strip_2layer_x)
strip_3layer_x <- ggh4x::strip_nested(  background_x = ggh4x::elem_list_rect(  fill = c( "#173F5F", "#227C9D", "#26C6DA" ),colour = "black",   linewidth = 0.4),  text_x = ggh4x::elem_list_text(colour = c("white", "white", "black"),   face = "bold",  size = c(12, 11, 10)),  by_layer_x = TRUE)
strip_2layer_y <- ggh4x::strip_nested(background_y = ggh4x::elem_list_rect( fill = c(  "#6C5CE7",  "#F4D35E"  ),colour = "black"),text_y = ggh4x::elem_list_text(   colour = c("white", "black"),   face = "bold",  size = c(12, 10)),  by_layer_y = TRUE)

strip_multi_xy <- ggh4x::strip_nested(  background_x = ggh4x::elem_list_rect (fill = c("#173F5F", "#26C6DA"),colour = "black"  ),  text_x = ggh4x::elem_list_text(colour = c("white", "black"), face = "bold"  ), background_y = ggh4x::elem_list_rect( fill = c("#6C5CE7", "#F4D35E"),colour = "black"),  text_y = ggh4x::elem_list_text (colour = c("white", "black"),   face = "bold"  ),  by_layer_x = TRUE,  by_layer_y = TRUE)

