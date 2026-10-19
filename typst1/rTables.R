

library(tinytable)

tmp <- mtcars %>%  tibble::rownames_to_column("Car") %>%  arrange(gear, mpg) %>%  group_by(gear) %>%  mutate(    gearGroup = paste0("Gear: ", gear, "  |  No. of Cars: ", n())  ) %>%  ungroup()
tmp
tt(tmp) %>%  group_tt(i = "gearGroup") %>%  subset(select = -c(gearGroup)) %>%  style_tt(align = "c") %>%  style_tt(    i = "groupi",    align = "l",    color = "teal",    line = "b"  ) %>%  theme_typst()

tmp <- mtcars %>%  tibble::rownames_to_column("Car") %>%  arrange(gear, mpg) %>%  group_by(gear) %>%  mutate(gearGroup = paste0("Gear: ", gear, " | No. of Cars: ", n())) %>%  ungroup()
tmp
# Group labels and last row position of each group
grp <- tmp %>%  count(gearGroup, name = "n") %>%  mutate(end = cumsum(n))
grp
(group_labels <- as.list(setNames(grp$end, grp$gearGroup)))

# Create table
tt(tmp) %>%  group_tt(i = group_labels) %>%  subset(select = -gearGroup) %>%  style_tt(align = "c") %>%  style_tt(i = "groupi", align = "l",  color = "teal", line = "b") %>%  theme_typst()

#Table2
library(tinytable)
library(dplyr)

tmp <- mtcars %>%  tibble::rownames_to_column("Car") %>%  arrange(gear, mpg)

# Group summary
grp <- tmp %>%  group_by(gear) %>%  summarise( n = n(), avgMPG = round(mean(mpg), 2),  avgWT = round(mean(wt), 2),  .groups = "drop"  ) %>%  mutate(    label = paste0( "Gear: ", gear,  " | Cars: ", n,  " | Avg MPG: ", avgMPG,  " | Avg WT: ", avgWT   ),  end = cumsum(n)  )
grp
# Generate tinytable
tt(tmp %>% select(-gear)) %>%   group_tt(i = group_labels) %>%  style_tt(align = "c") %>%  style_tt(    i = "groupi",    align = "l",    color = "teal",    line = "b"  ) %>%  theme_typst()
