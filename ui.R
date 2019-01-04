shinyUI(
  dashboardPage(
   dashboardHeader(title = "Are You Drunk?"),
   dashboardSidebar(
    sidebarMenu(
          menuSubItem("Homepage", icon=icon("home"), tabName = "Homepage"),
        menuItem("Menu", tabName = "Menu", startExpanded = TRUE,
          menuSubItem("World Map", icon=icon("globe"), tabName = "Locations"),
        menuItem("Japan", tabName = "Japanese", startExpanded = FALSE,
          menuSubItem("Distillery Locations", icon=icon("globe"), tabName = "Japan"),
        menuItem("Hakushu", icon=icon("glass"), tabName = "Hakushu", startExpanded = FALSE,
          menuSubItem("The Hakushu Brand", tabName = "Hakushu"),
          menuSubItem("The Hakushu Single Malt Whisky", tabName = "haksin"),
          menuSubItem("Hakushu 12 Year Old", tabName = "hak12"),
          menuSubItem("Hakushu 18 Year Old", tabName = "hak18"),
          menuSubItem("Hakushu 25 Year Old", tabName = "hak25"),
          menuSubItem("Hakushu Bourbon Barrel", tabName = "hakbou"),
          menuSubItem("Hakushu 12 Year Old 43.5%", tabName = "hak12435"),
          menuSubItem("Hakushu 10 Year Old", tabName = "hak10")),
        menuItem("Hibiki", icon=icon("glass"), tabName = "Hibiki", startExpanded = FALSE,
          menuSubItem("The Hibiki Brand", tabName = "Hibiki"), 
          menuSubItem("Hibiki 12 Year Old", tabName = "hib12"),
          menuSubItem("Hibiki 17 Year Old", tabName = "hib17"),
          menuSubItem("Hibiki 21 Year Old", tabName = "hib21"),
          menuSubItem("Hibiki 30 Year Old", tabName = "hib30"),
          menuSubItem("Hibiki 35 Year Old Tokuda Yasokichi III", tabName = "hib35"),
          menuSubItem("Hibiki Japanese Harmony", tabName = "hibhar"),
          menuSubItem("Hibiki Japanese Harmony Master's", tabName = "hibmas")),
        menuItem("Nikka", icon=icon("glass"), tabName = "Nikka", startExpanded = FALSE,
          menuSubItem("The Nikka Brand", tabName = "Nikka"),
          menuSubItem("Nikka Whisky From The Barrel", tabName = "nikbar"),
          menuSubItem("Nikka Coffey Grain Whisky", tabName = "nikcofgra"),
          menuSubItem("The Nikka 12 Year Old", tabName = "nik12"),
          menuSubItem("Nikka Taketsuru 17 Year Old", tabName = "niktak17"),
          menuSubItem("Nikka Taketsuru 25 Year Old", tabName = "niktak25"),
          menuSubItem("Nikka Taketsuru Pure Malt", tabName = "niktak"),
          menuSubItem("Nikka Coffey Malt Whisky", tabName = "nikcofmal"),
          menuSubItem("Nikka Coffey Gin", tabName = "nikcofgin"),
          menuSubItem("Nikka Pure Malt Black", tabName = "nikpur"),
          menuSubItem("Nikka Blended Whisky", tabName = "nikble"),
          menuSubItem("Nikka All Malt", tabName = "nikall"),
          menuSubItem("Super Nikka Revival Limited Edition", tabName = "niksup"),
          menuSubItem("Nikka Whisky From The Barrel - 3 Litre", tabName = "nikbar3"),
          menuSubItem("Nikka Pure Malt White", tabName = "nikwhi"),
          menuSubItem("Nikka Taketsuru 12 Year Old", tabName = "niktak12"),
          menuSubItem("Nikka Taketsuru 21 Year Old", tabName = "niktak21"),
          menuSubItem("Nikka Coffey Malt 1998", tabName = "nikcof1998"),
          menuSubItem("Nikka 8 Year Old Black", tabName = "nik8"),
          menuSubItem("Nikka 1995 Single Cask Coffey Grain", tabName = "nik1995"),
          menuSubItem("Nikka Whisky From The Barrel Gift Pack", tabName = "nikgif")),
        menuItem("Yamazaki", icon=icon("glass"), tabName = "Yamazaki", startExpanded = FALSE,
          menuSubItem("The Yamazaki Brand", tabName = "Yamazaki"),
          menuSubItem("Yamazaki Single Malt Whisky", tabName = "yamsin"),
          menuSubItem("Yamazaki 10 Year Old", tabName = "yam10"),
          menuSubItem("Yamazaki 12 Year Old", tabName = "yam12"),
          menuSubItem("Yamazaki 18 Year Old", tabName = "yam18"),
          menuSubItem("Yamazaki 25 Year Old", tabName = "yam25"),
          menuSubItem("Yamazaki 50 Year Old", tabName = "yam50"),
          menuSubItem("Yamazaki Sherry Cask 2013", tabName = "yamshe13"),
          menuSubItem("Yamazaki Sherry Cask 2016", tabName = "yamshe16"),
          menuSubItem("Yamazaki Bourbon Barrel 2013 (48%)", tabName = "yambou"),
          menuSubItem("Yamazaki Bourbon Barrel 2013 (48.2%)", tabName = "yambou2"),
          menuSubItem("Yamazaki Puncheon 2013", tabName = "yampun"),
          menuSubItem("Yamazaki Mizunara 2012", tabName = "yammiz12"),
          menuSubItem("Yamazaki Mizunara 2013", tabName = "yammiz13"),
          menuSubItem("Yamazaki 1984", tabName = "yam1984"),
          menuSubItem("The Yamazaki Mizunara 18 Year Old (2017)", tabName = "yammiz18"))),
        menuItem("Italy", tabName = "Italy", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "italian"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "itawine")),
        menuItem("Portugal", tabname = "Portugal", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "portuguese"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "portwine")),
        menuItem("Brazil", tabname = "Brazil", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "brazilian"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "brazwine")),
        menuItem("England", tabname = "England", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "english"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "engwine")),
        menuItem("Croatia", tabname = "Croatia", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "croatian"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "crowine")),
        menuItem("South Africa", tabname = "South Africa", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "south"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "sthwine")),
        menuItem("Egypt", tabname = "Egypt", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "egyptian"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "egywine")),
        menuItem("USA", tabname = "USA", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "american"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "uswine")),
        menuItem("France", tabname = "France", startExpanded = FALSE,
          menuSubItem("Wine Description", icon=icon("glass"), tabName = "french"),
          menuSubItem("Vineyard Location", icon=icon("globe"), tabName = "frawine"))
     )),
     width = 400),
    
     dashboardBody(
      tabItems(
        tabItem(tabName = "Homepage",
                h1("World of Alcohol"),
                tags$img(src = "drink.jpg")
        ),
        tabItem(tabName = "Locations",
                h1("World View"),
                leafletOutput("world", width = "1000", height = "700")
        ),
        tabItem(tabName = "Japanese",
                h1("Japanese Whisky"), h4("Explore Japanese Whiskies")
        ),
        tabItem(tabName = "Japan",
                h1("Japanese Whisky"),
                leafletOutput("map", width = "1000", height = "700")
        ),
        tabItem(tabName = "Hakushu",
                h1("The Hakushu Brand"), h4("Built at the foot of Mt. Kaikomagatake in the Southern Japan Alps, 
                                  Hakushu is Suntory's second malt distillery, 
                                  producing very different whiskies to those found at Yamazaki."),
                leafletOutput("hakloc", width = "1000", height = "700"),
                fluidRow(valueBox(reviews(Hakushu), "Reviews in total"))
        ),
        tabItem(tabName = "haksin",
        h1("The Hakushu Single Malt Whisky"),
        boxing("haksin")
        ),
        tabItem(tabName = "hak12",
        h1("Hakushu 12 Year Old"),
        boxing("hak12")
        ),
        tabItem(tabName = "hak10",
        h1("Hakushu 10 Year Old"),
        boxing("hak10")
        ),
        tabItem(tabName = "hak18",
        h1("Hakushu 18 Year Old"),
        boxing("hak18")
        ),
        tabItem(tabName = "hak25",
        h1("Hakushu 25 Year Old"),
        boxing("hak25")
        ),
        tabItem(tabName = "hak12435",
        h1("Hakushu 12 Year Old 43.5%"),
        boxing("hak12435")
        ),
        tabItem(tabName = "hakbou",
        h1("Hakushu Bourbon Barrel"),
        boxing("hakbou")
        ),
        tabItem(tabName = "Hibiki",
                h1("The Hibiki Brand"), h4("Introduced in the 1970s following the construction of the company's second distillery Hakushu 
                                 (the first being the famous Yamazaki), Hibiki has gone on to win a worldwide follwing and 
                                 critical acclaim culminating in the award of an International Wine and 
                                 Spirits Competition Trophy in 2004 for the Hibiki 30 year-old."),
                leafletOutput("hibloc", width = "1000", height = "700"),
                fluidRow(valueBox(reviews(Hibiki), "Reviews in total"))
        ),
        tabItem(tabName = "hibhar",
        h1("Hibiki Japanese Harmony"),
        boxing("hibhar")
        ),
        tabItem(tabName = "hib35",
        h1("Hibiki 35 Year Old by Tokuda Yasokichi III"),
        boxing("hib35")
        ),
        tabItem(tabName = "hib17",
        h1("Hibiki 17 Year Old"),
        boxing("hib17")
        ),
        tabItem(tabName = "hib12",
        h1("Hibiki 12 Year Old"),
        boxing("hib12")
        ),
        tabItem(tabName = "hib30",
        h1("Hibiki 30 Year Old"),
        boxing("hib30")
        ),
        tabItem(tabName = "hib21",
        h1("Hibiki 21 Year Old"),
        boxing("hib21")
        ),
        tabItem(tabName = "hibmas",
        h1("Hibiki Japanese Harmony Master's Select"),
        boxing("hibmas")
        ),
        tabItem(tabName = "Nikka",
                h1("The Nikka Brand"), h4("In 1918, Masataka Taketsuru embarked alone on a long voyage to Scotland. In this distant land the secrets 
                                of whisky-making would be imparted to this young Japanese man, and 
                                here he would meet the woman who would become his bride."),
                leafletOutput("nikloc", width = "1000", height = "700"),
                fluidRow(valueBox(reviews(Nikka), "Reviews in total"))
        ),
        tabItem(tabName = "nikbar",
        h1("Nikka Whisky From The Barrel"),
        boxing("nikbar")
        ),
        tabItem(tabName = "nikcofgra",
        h1("Nikka Coffey Grain Whisky"),
        boxing("nikcofgra")
        ),
        tabItem(tabName = "nikgif",
        h1("Nikka Whisky From The Barrel Gift Pack"),
        boxing("nikgif")
        ),
        tabItem(tabName = "niktak",
        h1("Nikka Taketsuru Pure Malt"),
        boxing("niktak")
        ),
        tabItem(tabName = "nikcofmal",
        h1("Nikka Coffey Malt Whisky"),
        boxing("nikcofmal")
        ),
        tabItem(tabName = "nikpur",
        h1("Nikka Pure Malt Black"),
        boxing("nikpur")
        ),
        tabItem(tabName = "niktak12",
        h1("Nikka Taketsuru 12 Year Old"),
        boxing("niktak12")
        ),
        tabItem(tabName = "niktak21",
        h1("Nikka Taketsuru 21 Year Old"),
        boxing("niktak21")
        ),
        tabItem(tabName = "nik12",
        h1("Nikka 12 Year Old"),
        boxing("nik12")
        ),
        tabItem(tabName = "niktak17",
        h1("Nikka Taketsuru 17 Year Old"),
        boxing("niktak17")
        ),
        tabItem(tabName = "niktak25",
        h1("Nikka Taketsuru 25 Year Old"),
        boxing("niktak25")
        ),
        tabItem(tabName = "nikcofgin",
        h1("Nikka Coffey Gin"),
        boxing("nikcofgin")
        ),
        tabItem(tabName = "nikble",
        h1("Nikka Blended Whisky"),
        boxing("nikble")
        ),
        tabItem(tabName = "nikall",
        h1("Nikka All Black"),
        boxing("nikall")
        ),
        tabItem(tabName = "niksup",
        h1("Super Nikka Revival Limited Edition"),
        boxing("niksup")
        ),
        tabItem(tabName = "nikbar3",
        h1("Nikka Whisky From The Barrel - 3 Litre"),
        boxing("nikbar3")
        ),
        tabItem(tabName = "nikwhi",
        h1("Nikka Pure Malt White"),
        boxing("nikwhi")
        ),
        tabItem(tabName = "nikcof1998",
        h1("Nikka Coffey Malt 1998"),
        boxing("nikcof1998")
        ),
        tabItem(tabName = "nik8",
        h1("Nikka 8 Year Old Black"),
        boxing("nik8")
        ),
        tabItem(tabName = "nik1995",
        h1("Nikka 1995 Single Cask Coffey Grain"),
        boxing("nik1995")
        ),
        tabItem(tabName = "Yamazaki",
                h1("The Yamazaki Brand"), h4("Yamazaki single malt whisky is made from the purest natural ingredients 
                                   distilled through the art of Japanese craftsmanship 
                                   in perfect harmony with nature."),
                leafletOutput("yamloc", width = "1000", height = "700"),
                fluidRow(valueBox(reviews(Yamazaki), "Reviews in total"))
        ),
        tabItem(tabName = "yamsin",
        h1("Yamazaki Single Malt Whisky"),
        boxing("yamsin")
        ),
        tabItem(tabName = "yam10",
        h1("Yamazaki 10 Year Old"),
        boxing("yam10")
        ),
        tabItem(tabName = "yam12",
        h1("Yamazaki 12 Year Old"),
        boxing("yam12")
        ),
        tabItem(tabName = "yam18",
        h1("Yamazaki 18 Year Old"),
        boxing("yam18")
        ),
        tabItem(tabName = "yam25",
        h1("Yamazaki 25 Year Old"),
        boxing("yam25")
        ),
        tabItem(tabName = "yam50",
        h1("Yamazaki 50 Year Old"),
        boxing("yam50")
        ),
        tabItem(tabName = "yam1984",
        h1("Yamazaki 1984"),
        boxing("yam1984")
        ),
        tabItem(tabName = "yamshe13",
        h1("Yamazaki Sherry Cask 2013"),
        boxing("yamshe13")
        ),
        tabItem(tabName = "yamshe16",
        h1("Yamazaki Sherry Cask 2016"),
        boxing("yamshe16")
        ),
        tabItem(tabName = "yambou",
        h1("Yamazaki Bourbon Barrel 2013 (48%)"),
        boxing("yambou")
        ),
        tabItem(tabName = "yambou2",
        h1("Yamazaki Bourbon Barrel 2013 (48.2%)"),
        boxing("yambou2")
        ),
        tabItem(tabName = "yampun",
        h1("Yamazaki Puncheon 2013)"),
        boxing("yampun")
        ),
        tabItem(tabName = "yammiz12",
        h1("Yamazaki Mizunara 2012"),
        boxing("yammiz12")
        ),
        tabItem(tabName = "yammiz13",
        h1("Yamazaki Mizunara 2013"),
        boxing("yammiz13")
        ),
        tabItem(tabName = "yammiz18",
        h1("The Yamazaki Mizunara 18 Year Old (2017 Edition)"),
        boxing("yammiz18")
        ),
        tabItem(tabName = "itawine",
        h1("Italian Wine"),
        leafletOutput("itawine", width = "1000", height = "700")
        ),
        tabItem(tabName = "italian",
        boxing2("italian")
        ),
        tabItem(tabName = "portwine",
        h1("Portuguese Wine"),
        leafletOutput("port", width = "1000", height = "700")
        ),
        tabItem(tabName = "portuguese",
        boxing2("portuguese")
        ),
        tabItem(tabName = "brazwine",
        h1("Brazilian Wine"),
        leafletOutput("brazwine", width = "1000", height = "700")
        ),
        tabItem(tabName = "brazilian",
        boxing2("brazilian")
        ),
        tabItem(tabName = "engwine",
        h1("English Wine"),
        leafletOutput("engwine", width = "1000", height = "700")
        ),
        tabItem(tabName = "english",
        boxing2("english")
        ),
        tabItem(tabName = "crowine",
        h1("Croatian Wine"),
        leafletOutput("crowine", width = "1000", height = "700")
        ),
        tabItem(tabName = "croatian",
        boxing2("croatian")
        ),
        tabItem(tabName = "sthwine",
        h1("South African Wine"),
        leafletOutput("sthwine", width = "1000", height = "700")
        ),
        tabItem(tabName = "south",
        boxing2("south")
        ),
        tabItem(tabName = "egywine",
        h1("Egyptian Wine"),
        leafletOutput("egywine", width = "1000", height = "700")
        ),
        tabItem(tabName = "egyptian",
        boxing2("egyptian")
        ),
        tabItem(tabName = "uswine",
        h1("American Wine"),
        leafletOutput("uswine", width = "1000", height = "700")
        ),
        tabItem(tabName = "american",
        boxing2("american")
        ),
        tabItem(tabName = "frawine",
        h1("French Wine"),
        leafletOutput("frawine", width = "1000", height = "700")
        ),
        tabItem(tabName = "french",
        boxing2("french")
        )
      )
    )
  )
)