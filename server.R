shinyServer(function(input, output){
  output$world <- renderLeaflet({
                    leaflet()%>% 
                    setView(0,0, zoom=2) %>% 
                    addTiles()%>% 
                    addMarkers(data=data, lng= ~long, lat= ~lat, popup= ~info)
  })
  output$map <- renderLeaflet({
                  leaflet()%>% 
                  setView(139,38, zoom=5) %>% 
                  addTiles()%>% 
                  addMarkers(data=data, lng= ~long, lat= ~lat, popup= ~info)
  })
  output$Hakushu <- renderPlot(cloud(Hakushu))
  output$hakloc <- renderLeaflet({
          leaflet() %>%
          setView(138, 35, zoom=6) %>%
          addTiles()%>%
          addMarkers(data=data, lng = 138, lat = 35, popup = "Hakushu is based in the mountains of the 
                                                              Yamanashi Prefecture, with Kofu its nearest 
                                                              city.")
  })
  output$haksin <- renderPlot(cloud(haksin))
  output$hak12 <- renderPlot(cloud(hak12))
  output$hak18 <- renderPlot(cloud(hak18))
  output$hak25 <- renderPlot(cloud(hak25))
  output$hakbou <- renderPlot(cloud(hakbou))
  output$hak12435 <- renderPlot(cloud(hak12435))
  output$hak10 <- renderPlot(cloud(hak10))
  
  output$Hibiki <- renderPlot(cloud(Hibiki))
  output$hibloc <- renderLeaflet({
          leaflet() %>%
          setView(139, 35, zoom=6) %>%
          addTiles()%>%
          addMarkers(data=data, lng = 139, lat = 35, popup = "Hibiki shares a distillery with Yamazaki, 
                                                              just outside of Kyoto")
  })
  output$hibhar <- renderPlot(cloud(hibhar))
  output$hib35 <- renderPlot(cloud(hib35))
  output$hibmas <- renderPlot(cloud(hibmas))
  output$hib17 <- renderPlot(cloud(hib17))
  output$hib30 <- renderPlot(cloud(hib30))
  output$hib21 <- renderPlot(cloud(hib21))
  output$hib12 <- renderPlot(cloud(hib12))
  
  output$Nikka <- renderPlot(cloud(Nikka))
  output$nikloc <- renderLeaflet({
    leaflet() %>%
    setView(141, 43, zoom=6) %>%
    addTiles()%>%
    addMarkers(data=data, lng = 141, lat = 43, popup = "Nikka is based in Yoichi, a northern town 
                                                        by the sea. It bares resemblance to Higland 
                                                        Scotland and was chosen for this reason.")
  })
  output$nikbar <- renderPlot(cloud(nikbar))
  output$nikcofgra <- renderPlot(cloud(nikcofgra))
  output$nikgif <- renderPlot(cloud(nikgif))
  output$niktak <- renderPlot(cloud(niktak))
  output$nikcofmal <- renderPlot(cloud(nikcofmal))
  output$nikpur <- renderPlot(cloud(nikpur))
  output$nik12 <- renderPlot(cloud(nik12))
  output$nikcofgin <- renderPlot(cloud(nikcofgin))
  output$nikble <- renderPlot(cloud(nikble))
  output$nikall <- renderPlot(cloud(nikall))
  output$niktak17 <- renderPlot(cloud(niktak17))
  output$niktak25 <- renderPlot(cloud(niktak25))
  output$niksup <- renderPlot(cloud(niksup))
  output$nikbar3 <- renderPlot(cloud(nikbar3))
  output$nikwhi <- renderPlot(cloud(nikwhi))
  output$niktak21 <- renderPlot(cloud(niktak21))
  output$niktak12 <- renderPlot(cloud(niktak12))
  output$nikcof1998 <- renderPlot(cloud(nikcof1998))
  output$nik8 <- renderPlot(cloud(nik8))
  output$nik1995 <- renderPlot(cloud(nik1995))
  
  output$Yamazaki <- renderPlot(cloud(Yamazaki))
  output$yamloc <- renderLeaflet({
    leaflet() %>%
    setView(135, 35, zoom=6) %>%
    addTiles()%>%
    addMarkers(data=data, lng = 135, lat = 35, popup = "The Yamazaki distillery is located in Shinamoto
                                                        in the Osaka Prefecture.")})
  output$yamsin <- renderPlot(cloud(yamsin))
  output$yam12 <- renderPlot(cloud(yam12))
  output$yam18 <- renderPlot(cloud(yam18))
  output$yam10 <- renderPlot(cloud(yam10))
  output$yamshe16 <- renderPlot(cloud(yamshe16))
  output$yambou2 <- renderPlot(cloud(yambou2))
  output$yambou <- renderPlot(cloud(yambou))
  output$yampun <- renderPlot(cloud(yampun))
  output$yammiz12 <- renderPlot(cloud(yammiz12))
  output$yam25 <- renderPlot(cloud(yam25))
  output$yammiz13 <- renderPlot(cloud(yammiz13))
  output$yamshe13 <- renderPlot(cloud(yamshe13))
  output$yam50 <- renderPlot(cloud(yam50))
  output$yam1984 <- renderPlot(cloud(yam1984))
  output$yammiz18 <- renderPlot(cloud(yammiz18))

  output$engwine <- mapping(-1, 54, "English Wines")
  output$crowine <- mapping(14, 45, "Croatian Wines")
  output$brazwine <- mapping(-50, -27, "Brazilian Wines")
  output$port <- mapping(-8, 38, "Portuguese Wines")
  output$itawine <- mapping(16, 40, "Italian Wines")
  output$sthwine <- mapping(18, -33, "South African Wines")
  output$egywine <- mapping(30, 30, "Egyptian Wines")
  output$uswine <- mapping(-121, 38, "American Wines")
  output$frawine <- mapping(5, 47, "French Wines")
  
  output$french <- renderPlot(cloud(france))
  output$english <- renderPlot(cloud(england))
  output$croatian <- renderPlot(cloud(croatia))
  output$brazilian <- renderPlot(cloud(brazil))
  output$portuguese <- renderPlot(cloud(portugal))
  output$italian <- renderPlot(cloud(italy))
  output$south <- renderPlot(cloud(southafrica))
  output$egyptian <- renderPlot(cloud(egypt))
  output$american <- renderPlot(cloud(usa))
})