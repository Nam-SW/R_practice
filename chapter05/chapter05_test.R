midwest <- as.data.frame(ggplot2::midwest)

midwest <- midwest %>% mutate(minors = ((poptotal - popadults) / poptotal) * 100)

midwest %>% 
  select(county, minors) %>% 
  arrange(desc(minors)) %>% 
  head(5)

midwest <- midwest %>% 
  mutate(minors_Ratio = ifelse(minors >= 40, "large", ifelse(minors >= 30, "middle", "small")))
table(midwest$minors_Ratio)

midwest %>% 
  mutate(asian_Ratio = popasian / poptotal * 100) %>% 
  select(state, county, asian_Ratio) %>% 
  arrange(asian_Ratio) %>% 
  head(10)
