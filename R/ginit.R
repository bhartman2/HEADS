#' ginit
#'
#' Gini index from a table with margins added
#'
#' @param t table of variables for gini Index
#'
#' @returns numeric Gini index.
#' @export
#'
#' @examples
#' \dontrun{
#' require(tidyverse)
#' z2 = Table_8_1 %>% mutate(x2=(GlucoseLevel<159))
#' z2
#' q2 = table(z2$x2, z2$Diabetes) %>% addmargins
#' q2
#' ginit(q2)
#' }
#'

ginit = function (t) {

  q = t
  g = (q[2,2]/q[2,3])*(1-(q[2,2]/q[2,3])) + (q[1,2]/q[1,3])*(1-(q[1,2]/q[1,3])) +
    (q[2,1]/q[2,3])*(1-(q[2,1]/q[2,3])) + (q[1,1]/q[1,3])*(1-(q[1,1]/q[1,3]))

  return(g)
}


#' ginisearch
#'
#' @param .data a data frame or something that can be converted to a data frame
#' @param .var variable to be searched on
#' @param .target categorical variable in dataset
#'
#' @returns tibble with the cutpoints of search variable and their gini indices
#' @export
#'
#' @examples
#' \dontrun{
#' require(tidyverse)
#' z2 = Table_8_1 %>% mutate(x2=(GlucoseLevel<159))
#' z2
#' q2 = addmargins(table(z2$x2, z2$Diabetes))
#' q2
#' ginisearch(q2)
#' }
ginisearch = function(.data, .var, .target) {

  require(tidyverse)

  z0 = as.data.frame(.data)
  varmin = min(z0[,.var])
  varmax = max(z0[,.var])
  g = c()
  w = sort(unique(z0[,.var]))
  n=length(w)
  for (i in 1:n) {
    z0$x2 = (z0[,.var] < w[i])*1
    q0 = addmargins(table(z0$x2, z0[,.target]))
    g[i]=ginit(q0)
  }
  return(tibble::tibble(w, g))
}

#' plot_ginisearch
#'
#' @param .data a tibble returned by ginisearch
#'
#' @returns a ggplot object
#' @export
#'
#' @examples
#' \dontrun{
#' z2 = Table_8_1
#' z2$x2= (GlucoseLevel<159))
#' q2 = table(z2$x2, z2$Diabetes) %>% addmargins
#' ginit(q2)
#' }
#'
plot_ginisearch = function(.data) {
  require(tidyverse)
  S = .data
  opt=which.min(S$g)
  plot = ggplot(S, aes(w,g)) +
    geom_line(linetype="dotted") +
    geom_point() +
    geom_point(aes(w[opt], g[opt]), color="red", size=3) +
    coord_cartesian(xlim=c(min(S$w), max(S$w))) +
    geom_text(data=S[opt,],
              aes(x=w, y=0.99,
                  label=paste0("Opt=", w, ", ", round(g,3))),
              ) +
    labs(y="Gini Index") +
    theme_bw()
  return(plot)
}
