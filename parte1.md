---
title: "AirBnB parte1"
author: "Nombre, Apellidos"
date: ""
output:
  html_document: 
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    toc: yes
    number_sections: yes
  word_document:
    toc: yes
linkcolor: red
header-includes: \renewcommand{\contentsname}{Contenidos}
citecolor: blue
toccolor: blue
urlcolor: blue
---



# Contexto 

Blah blah 
# Carga de datos 


```
## Rows: 6696041 Columns: 7
```

```
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr  (2): price, adjusted_price
## dbl  (3): listing_id, minimum_nights, maximum_nights
## lgl  (1): available
## date (1): date
```

```
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```
## Rows: 18309 Columns: 74
```

```
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr  (24): listing_url, name, description, neighborhood_overview, picture_ur...
## dbl  (37): id, scrape_id, host_id, host_listings_count, host_total_listings_...
## lgl   (8): host_is_superhost, host_has_profile_pic, host_identity_verified, ...
## date  (5): last_scraped, host_since, calendar_last_scraped, first_review, la...
```

```
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

## Limpieza y modelo





## Selecion de barrios o mucipios


```
## [1] "Pollença"          "Alcúdia"           "Palma de Mallorca"
## [4] "Santanyí"          "Manacor"
```


## Pruebas estadsítico básicos


```
## 
##    TRUE 
## 6695675
```

```
## [1] 292.5159
```

```
## [1] 292.5159
```

```
## [1] 1
```

```
## [1] "listing_id"     "date"           "available"      "price"         
## [5] "adjusted_price" "minimum_nights" "maximum_nights"
```

```
## [1] "id"                     "neighbourhood_cleansed" "latitude"              
## [4] "longitude"
```

```
## # A tibble: 5 × 8
##   neighbourhood_cleansed Number Min_Price Max_Price Mean_Price Standar_dev
##   <chr>                   <int>     <dbl>     <dbl>      <dbl>       <dbl>
## 1 Alcúdia                675262         9      9999       283.        729.
## 2 Manacor                309182         9      9999       325.       1043.
## 3 Palma de Mallorca      632203         0      9999       206.        549.
## 4 Pollença               965265         9     11500       324.        742.
## 5 Santanyí               327792         9      9999       279.        601.
## # … with 2 more variables: Standar_Error <dbl>, Median_price <dbl>
```


## Informe


|neighbourhood_cleansed | Number| Min_Price| Max_Price| Mean_Price| Standar_dev| Standar_Error| Median_price|
|:----------------------|------:|---------:|---------:|----------:|-----------:|-------------:|------------:|
|Alcúdia                | 675262|         9|      9999|     283.50|      729.17|          0.89|          174|
|Manacor                | 309182|         9|      9999|     325.50|     1042.80|          1.88|          170|
|Palma de Mallorca      | 632203|         0|      9999|     206.38|      548.61|          0.69|           98|
|Pollença               | 965265|         9|     11500|     323.54|      741.95|          0.76|          198|
|Santanyí               | 327792|         9|      9999|     278.71|      601.07|          1.05|          187|

