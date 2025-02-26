#' gg_plotsvm
#'
#' Plot an SVM model created by `kernlab`
#'
#' @param model kernlab model
#' @param data data frame used in kernlab model
#' @param x feature 1 from data in model
#' @param y feature 2 from data in model
#' @param ... parameters passed to aes() such as color
#'
#' @returns a ggplot object
#' @export
#'
#' @examples
#' \dontrun{
#' data(iris)
#' iris_data <- iris[iris$Species != "setosa", ]
#' iris_data$Species <- factor(iris_data$Species)
#' df = iris_data[,c(1,2,5)]
#' require(kernlab)
#' # scaled=TRUE is default for ksvm
#' model2 <- kernlab::ksvm(Species ~ ., df, kernel = "vanilladot", C = 1)
#' gg_plotsvm(model2, df,
#'               Sepal.Length, Sepal.Width, color=Species)
#' model3 <- kernlab::ksvm(Species ~ ., df, kernel = "vanilladot", scaled=FALSE, C = 1)
#' gg_plotsvm(model3, df,
#'               Sepal.Length, Sepal.Width, color=Species)
#'}
gg_plotsvm = function(model, data, x, y, ...) {

  require(tidyverse)
  require(kernlab)

  # Extract weights and bias (intercept) for the separating line
  w <- colSums(coef(model)[[1]] * model@xmatrix[[1]])
  # Extract scaled bias (negative because of internal representation in ksvm)
  b <- -model@b
  # adjusted_b = b

  # Extract support points
  z = model@xmatrix[[1]][,1:2]

  # adjust for scaling
  if(!is.null(model@scaling)) {
    # Get internal scaling parameters from the model
    scaling_params <- model@scaling
    mu <- scaling_params$x.scale$`scaled:center`  # Mean used for scaling
    sigma <- scaling_params$x.scale$`scaled:scale`  # Standard deviation used for scaling
    z[,1] = z[,1]* sigma[1] + mu[1]
    z[,2] = z[,2]* sigma[2] + mu[2]
  }
   # plot the points and the support points
   plot = ggplot(data) +
    geom_point(aes({{x}}, {{y}}, ...), shape=19) +
    labs(x=enquo(x), y=enquo(y)) +
    scale_color_discrete(type=c("red","blue")) +
    geom_point(data=as.data.frame(z), aes({{x}}, {{y}}),
               color="black", shape="X", size=4, alpha=.3) +
    theme_bw()

  return(plot)
}

#' svmgrid
#'
#' @param .data a data frame with two columns for gridding
#' @param model a model object produced by ksvm
#' @param ng number of points in each direction of grid
#'
#' @returns data frame with 3 columns;
#'  - the grid points x and y for the columns of .data,
#'  -  decision values predicted using the ksvm model
#' @export
#'
#' @examples
#' \dontrun{
#' data(iris)
#' iris_data <- iris[iris$Species != "setosa", ]
#' iris_data$Species <- factor(iris_data$Species)
#' df = iris_data[,c(1,2,5)]
#' require(kernlab)
#' model <- kernlab::ksvm(Species ~ ., data = df, kernel = "vanilladot", scaled=FALSE, C = 1)
#' grid = svmgrid(df, model)
#' }
svmgrid = function (.data, model, ng=100) {

  require(tidyverse)
  require(kernlab)

  labels = attr(model@terms,"term.labels")

  x = .data
  # Create a grid for plotting
  grid_x <- seq(min(x[, 1]) - 1, max(x[, 1]) + 1, length = ng)
  grid_y <- seq(min(x[, 2]) - 1, max(x[, 2]) + 1, length = ng)

  gd = data.frame(xg = grid_x, yg = grid_y)

  if(!is.null(model@scaling))
    gd = svmunscale(gd, model = model)

  grid <- expand.grid(X = gd$xg,
                      Y = gd$yg)
  colnames(grid) = labels

  # Predict the decision function values
  decision_values <- kernlab::predict(model, grid, type = "decision")

  # if(!is.null(model@scaling))
  #   decision_values = svmunscale(decision_values, model)

  grid$decision = decision_values

  return(grid)
}

#' gg_plotsvm_contour
#'
#' Adds contours to an svm ggplot object using a grid
#'
#' @param grid a grid created by svmgrid
#' @param legend logical, default FALSE, display legend
#' @param bins number of bins for contouring
#'
#' @returns ggplot object
#' @details
#' - You can change the contour colors by adding a ggplot call to
#' `scale_fill_viridis_d(option="<one of the viridis options>")`
#'
#' @export
#'
#' @examples
#' \dontrun{
#' iris_data <- iris[iris$Species != "setosa", ]
#' iris_data$Species <- factor(iris_data$Species)
#' df = iris_data[,c(1,2,5)]
#' require(kernlab)
#' require(tidyverse)
#' # scaled=TRUE is default for ksvm
#' model2 <- kernlab::ksvm(Species ~ ., df, kernel = "vanilladot", C = 1)
#' gg_plotsvm(model2, df,
#'               Sepal.Length, Sepal.Width, color=Species)
#' model3 <- kernlab::ksvm(Species ~ ., df, kernel = "vanilladot", scaled=FALSE, C = 1)
#' gg_plotsvm(model3, df,
#'               Sepal.Length, Sepal.Width, color=Species) +
#'    gg_plotsvm_contour(grid = svmgrid(df, model) )
#'}
gg_plotsvm_contour = function(grid, bins=10, legend=FALSE) {

  require(tidyverse)

  list(
    geom_contour(data = grid,
                 aes(x = grid[,1], y = grid[,2], z = abs(decision)),
                 bins=bins,
                 linetype="longdash",
                 alpha=.5),
    geom_contour_filled(data = grid,
                        aes(x = grid[,1], y = grid[,2], z = abs(decision)),
                        bins=bins,
                        alpha=.2),
    scale_fill_viridis_d(option = "magma"),
    if(!legend) theme(legend.position = "none")
    )

}

#' svmmargin
#'
#' margin of a kernlab::svm model with linear kernel (`vanilladot`);
#'
#' margin is the distance of the best separating hyperplane to the closest
#' points of the dataset. The margin should be the same on either side. The closest points should be
#' symmetrically placed with respect to the hyperplane.
#'
#' @param model a kernlab::svm model; only an unscaled model can be relied on
#'
#' @returns margin, invisible
#' @details
#' Margin is the distance of the best separating hyperplane to the closest
#' points of the dataset. The margin should be the same on either side.
#' The closest points should be symmetrically placed with respect to the hyperplane.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' }
svmmargin = function(model) {

  require(kernlab)

  w <- colSums(coef(model)[[1]] * model@xmatrix[[1]])
  weight_norm = sqrt(sum(w^2))
  margin = 1/weight_norm

  if(!is.null(model@scaling)) {
    scaling_means <- model@scaling$x.scale$"scaled:center"
    scaling_sds <- model@scaling$x.scale$"scaled:scale"

    aweight_norm = sqrt(sum((scaling_means*w/scaling_sds)^2))
    amargin = 1/aweight_norm
    margin = amargin
  }

  invisible(margin)
}

#' gg_plotsvm_margin
#'
#' display margin of an svm model on a ggplot object
#'
#' @param margin margin value, calculated from svmmargin()
#' @param x numeric, x-axis location of text annotation
#' @param y numeric, y-axis location of text annotation
#' @param scaled logical, default FALSE, is the model scaled
#'
#' @returns a list containing ggplot text layer
#' @export
#'
#' @examples
#' \dontrun{
#' iris_data <- iris[iris$Species != "setosa", ]
#' iris_data$Species <- factor(iris_data$Species)
#' df = iris_data[,c(1,2,5)]
#' require(kernlab)
#' require(tidyverse)
#' model3 <- ksvm(Species ~ ., df, kernel = "vanilladot", scaled=FALSE, C = 1)
#' gg_plotsvm(model3, df,
#'               Sepal.Length, Sepal.Width, color=Species) +
#'    gg_plotsvm_margin(svmmargin(model3), x=8, y=4.5 )
#' }
gg_plotsvm_margin = function(margin, x, y, scaled=F) {

  require(tidyverse)

  l = paste0("Margin=", round(margin,2))
  l = ifelse (scaled, paste0("Scaled\n",l), paste0("Unscaled\n",l))

  list(
    geom_text(x=x, y=y, label=l)
  )

}

#' gg_plotsvm_lines
#'
#' plots the support plane line and optionally margin lines.
#'
#' @param model a `kernlab::ksvm` model
#' @param margin.lines logical, TRUE=plot margins on either side or FALSE=not. Default FALSE.
#'
#' @returns a list containing ggplot layers
#' @export
#'
#' @examples
#' \dontrun{
#' require(kernlab)
#' require(tidyverse)
#' iris_data <- iris[iris$Species != "setosa", ]
#' iris_data$Species <- factor(iris_data$Species)
#' df = iris_data[,c(1,2,5)]
#' model3 <- kernlab::ksvm(Species ~ ., df, kernel = "vanilladot", scaled=FALSE, C = 1)
#' gg_plotsvm(model3, df, Sepal.Length, Sepal.Width, color=Species) +
#'    gg_plotsvm_lines(model3, margin.lines=T )
#'}
gg_plotsvm_lines = function (model, margin.lines=FALSE) {

  require(tidyverse)
  require(kernlab)

  # Extract support points
  z = data.frame(model@xmatrix[[1]][,1:2])

  # Extract weights
  w <- colSums(coef(model)[[1]] * model@xmatrix[[1]])
  # Extract bias (negative because of internal representation in ksvm)
  b <- -model@b
  adjusted_b = b
  w_orig = w

  if(!is.null(model@scaling)) {
    # Get internal scaling parameters from the model
    scaling_params <- svm_model@scaling
    mu <- scaling_params$x.scale$`scaled:center`  # Mean used for scaling
    sigma <- scaling_params$x.scale$`scaled:scale`  # Standard deviation used for scaling

    # Adjust the bias to original scale
    adjusted_b <- b - sum((w * mu / sigma) )

    # unscale the support points
    z = svmunscale(z, model)
    # unscale the weights
    w_orig = w / sigma
  }

  mar = svmmargin(model) # scaling/not already present here

  L = list(geom_abline(aes(intercept = (-adjusted_b)/w_orig[2],
                    slope = -w_orig[1]/w_orig[2]),
                    color="blue") )
  if(margin.lines) {
    L = c(L,
          geom_abline(aes(intercept = -mar/w_orig[2] + (-adjusted_b)/w_orig[2],
                    slope = -w_orig[1]/w_orig[2]),
                color="blue", linetype="dashed"),
          geom_abline(aes(intercept =  mar/w_orig[2] + (-adjusted_b)/w_orig[2],
                          slope = -w_orig[1]/w_orig[2]),
                      color="blue", linetype="dashed")
          )
  }
  return(L)
}

#' svmunscale
#'
#' @param .data object with columns to unscale
#' @param model keanlab svm model
#'
#' @returns object with unscaled columns
#' @export
#'
#' @examples
#' \dontrun{
#' }
svmunscale = function (.data, model) {

  require(kernlab)

  x = .data

  if(!is.null(model@scaling)) {
    # Get internal scaling parameters from the model
    scaling_params <- svm_model@scaling
    mu <- scaling_params$x.scale$`scaled:center`  # Mean used for scaling
    sigma <- scaling_params$x.scale$`scaled:scale`  # Standard deviation used for scaling
  }

  x_uns = x
  for (i in 1:ncol(x)) {
    x_uns[,i] = x[,i]*sigma[i] + mu[i]
  }

  return(x_uns)

}
