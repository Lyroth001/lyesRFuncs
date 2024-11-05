#' Quickly runs a few useful analysis on a linear model
#' Glance, tidy, model parameters of an anova, and plots
#' @param model A linear model
#' @export


standardInvestigation = function(model){
  print(broom::glance(model))
  print(broom::tidy(model, conf.int = T))
  print(parameters::model_parameters(anova(model), es = "omega"))
  plot(model, which = c(1,3,2,4))
}