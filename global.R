library(leaflet)
library(sp)
library(tm)
library(wordcloud)
library(shiny)
library(shinydashboard)

cloud <- function(x){wordcloud(x, scale=c(2.5,0.5), max.words=75, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, 
                               colors=brewer.pal(8, "Dark2"))
}

boxing <- function(code){
  pic <- paste(code, "jpg", sep=".")
  fluidRow(
    box(plotOutput(code)),
    box(tags$img(src = pic, width="250", height="400"))
  )
}

boxing2 <- function(code){
  pic <- paste(code, "jpg", sep=".")
  fluidRow(
    box(plotOutput(code))
  )
}

reviews <- function(x){
  length(x)
}

mapping <- function(long, latit, pop){
  renderLeaflet({
    leaflet()%>% 
      setView(long, latit, zoom=5) %>% 
      addTiles()%>% 
      addMarkers(data=data, lng = long, lat = latit, popup= pop)
  })
}

whisky_data <- read.csv("japanese_whisky_review.csv")
whisky_data$Review_Content <- as.character(whisky_data$Review_Content)

data <- read.csv("Whiskeylocations.csv")
data$lat <- as.numeric(data$lat)
data$long <- as.numeric(data$long)
data.SP <- SpatialPointsDataFrame(data[,c(3,4)],data[,-c(3,4)])




myCorpus <- Corpus(VectorSource(whisky_data$Review_Content))
myCorpus <- tm_map(myCorpus, content_transformer(tolower))
myCorpus <- tm_map(myCorpus, removePunctuation)
myCorpus <- tm_map(myCorpus, removeNumbers)
myCorpus <- tm_map(myCorpus, removeWords,
                   c(stopwords("SMART"), "a", "as", "i", "the", "and", "but", "an", "japanese","whisky","whiskey","bottle","ive",
                     "im","whiskies","yamazaki","year", "hakushu"))

yamsin <- myCorpus[1:57]
yam12 <- myCorpus[58:183]
yam18 <- myCorpus[184:267]
yam10 <- myCorpus[268:285]
yamshe16 <- myCorpus[286:408]
yambou2 <- myCorpus[409:410]
yambou <- myCorpus[411:412]
yampun <- myCorpus[413:414]
yammiz12 <- myCorpus[415:416]
yam25 <- myCorpus[417:430]
yammiz13 <- myCorpus[431]
yamshe13 <- myCorpus[432]
yam50 <- myCorpus[433:440]
yam1984 <- myCorpus[441:452]
yammiz18 <- myCorpus[453:457]
hibhar <- myCorpus[458:515]
hib35 <- myCorpus[516:518]
hibmas <- myCorpus[519:529]
hib17 <- myCorpus[530:573]
hib30 <- myCorpus[574:580]
hib21 <- myCorpus[581:596]
hib12 <- myCorpus[597:653]
haksin <- myCorpus[654:679]
hak12 <- myCorpus[680:712]
hak18 <- myCorpus[713:719]
hak25 <- myCorpus[720:726]
hakbou <- myCorpus[727:728]
hak12435 <- myCorpus[729:737]
hak10 <- myCorpus[738]
nikbar <- myCorpus[739:888]
nikcofgra <- myCorpus[889:907]
nikgif <- myCorpus[908:909]
niktak <- myCorpus[910:950]
nikcofmal <- myCorpus[951:971]
nikpur <- myCorpus[972:989]
nik12 <- myCorpus[990:993]  
nikcofgin <- myCorpus[994:995]
nikble <- myCorpus[996:1009]
nikall <- myCorpus[1010:1029]
niktak17 <- myCorpus[1030:1051]
niktak25 <- myCorpus[1052:1053]
niksup <- myCorpus[1054]
nikbar3 <- myCorpus[1055:1056]
nikwhi <- myCorpus[1057:1065]
niktak21 <- myCorpus[1066:1097]
niktak12 <- myCorpus[1098:1120]
nikcof1998 <- myCorpus[1121]
nik8 <- myCorpus[1122:1123]
nik1995 <- myCorpus[1124:1130]

Yamazaki <- myCorpus[1:457]
Hibiki <- myCorpus[458:653]
Hakushu <- myCorpus[654:738]
Nikka <- myCorpus[739:1130]

data1 <- read.csv("vino.csv")

data1$X=NULL
data1$designation=NULL
data1$points=NULL
data1$price=NULL
data1$province=NULL
data1$region_1=NULL
data1$region_2=NULL
data1$taster_name=NULL
data1$taster_twitter_handle=NULL
data1$title=NULL
data1$variety=NULL
data1$winery=NULL

italy <- data1[data1$country == "Italy", ]
portugal <- data1[data1$country == "Portugal", ]
brazil <- data1[data1$country == "Brazil", ]
england <- data1[data1$country == "England", ]
croatia <- data1[data1$country == "Croatia", ]
southafrica <- data1[data1$country == "South Africa", ]
egypt <- data1[data1$country == "Egypt", ]
usa <- data1[data1$country == "US", ]
france <- data1[data1$country == "France", ]

corp <- function(data){
  data <- Corpus(VectorSource(data$description))
  data <- tm_map(data, content_transformer(tolower))
  data <- tm_map(data, removePunctuation)
  data <- tm_map(data, removeNumbers)
  data <- tm_map(data, removeWords, c(stopwords("SMART"), "a", "as", 
                                      "i", "the", "and", "but", "an", 
                                      "japanese","wine","nacional","bottle",
                                      "ive","im","years","year"))
}

italy <- corp(italy)
portugal <- corp(portugal)
brazil <- corp(brazil)
england <- corp(england)
croatia <- corp(croatia)
southafrica <- corp(southafrica)
egypt <- corp(egypt)
usa <- corp(usa)
france <- corp(france)
