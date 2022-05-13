peek <- function(model){
  t <- model %>% tidy() %>% print()
  g <- model %>% glance() %>% select(1:5, 8, 9) %>% print()
}
