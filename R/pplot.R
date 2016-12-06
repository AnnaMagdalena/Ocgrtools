#' pplot
#'
#' Create depth profiles of ocean properties.Depth profiles are plotted with depth along
#' the vertical axis (y-axis) where seasurface represents 0m and is plotted at the top
#' axis and deepest waters (eg. 2000m) are plotted at the bottom of y-axis. The range on
#' the horizontal axis (x-axis) represents the range in the ocean property being plotted.
#'
#' @param df dataframe
#' @param property numeric vector
#' @param depth numeric vector
#'
#' @return plot
#' @export
#'
#' @examples
#'#' pplot(data,"temp","depth")

pplot <- function(df,property,depth) {
	ggplot2 :: ggplot(data=df,mapping =aes_string(x=property,y=depth), group=stn) +
		geom_path(aes(colour=stn),size=0.2)+
		geom_point(aes(colour=stn),size=3)+
		scale_y_reverse(breaks = seq(0,5000,500))+
		ylab("Depth(m)")+
		theme_bw()+
		theme(axis.title.y = element_blank(),
					legend.title=element_text(size=15),
					legend.text = element_text(size=15),
					axis.title.x = element_text(size=16),
					panel.grid.major = element_blank(),
					panel.grid.minor = element_blank(),
					axis.text = element_text(size=15))
}
