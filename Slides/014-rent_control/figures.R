#setup---------------------------------------------------------------
 
#load packages
library(pacman)
p_load(
  data.table, tidyverse, lubridate, magrittr
)

#load fred data
ownership <- fread(here::here("data","RHORUSQ156N.csv")) %>% as_tibble()



#create plot

  ggplot(ownership)+
  geom_line(aes(x=as_date(DATE), y =RHORUSQ156N ))+
  theme_classic()+
  labs(x = "Date", y= "Homeownership Rate", subtitle ="Data: FRED")

#save the plot
ggsave(here::here("014-rent_control","images","ownership_plot.png"),
       plot,
       dpi = 300, 
       height =6 , width = 6)
