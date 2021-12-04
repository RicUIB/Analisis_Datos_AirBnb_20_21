


library(tidyverse)
calendar=read_csv("data/Mallorca/calendar.csv")
listing=read_csv("data/Mallorca/listings.csv")

listing2 = listing %>% select(id,neighbourhood_cleansed,
                              latitude,longitude)
calendar2= calendar %>% 
  filter(!is.na(price)|!is.na(adjusted_price)) %>%
  mutate(price=as.numeric(gsub("\\$|,","",price)),
         adjusted_price=as.numeric(gsub("\\$|,","",price)))


aux=sort(table(listing2$neighbourhood_cleansed),decreasing=TRUE)
top5=names(aux[1:5])
top5



table(calendar2$price==calendar2$adjusted_price)
mean(calendar2$price)
mean(calendar2$adjusted_price)
cor(calendar2$price, calendar2$adjusted_price)

names(calendar)
names(listing2)
calendar2= rename(calendar2,id=listing_id)
calendar3 = left_join(calendar2,listing2,by="id")

# limpiar memoria si hace falta
# rm(listing,calendar,calendar2)

# filtro top5
calendar3_top5 = calendar3 %>% filter(neighbourhood_cleansed %in% top5)

tabla = calendar3_top5 %>%
  group_by(neighbourhood_cleansed) %>%
  summarise(Number=n(),
            Min_Price=min(price),
            Max_Price=max(price),
            Mean_Price=mean(price),
            Standar_dev=sd(price),
            Standar_Error=sd(price)/sqrt(Number),
            Median_price=quantile(price,0.5))

tabla
