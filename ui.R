library(shiny)
library(shinydashboard)
tags$style("@import url(https://use.fontawesome.com/releases/v5.7.2/css/all.css);")
tags$style(
  "@import url('https://fonts.googleapis.com/css2?family=Comfortaa&display=swap');"
)
##HALAMAN UNTUK LIBRARY DAN FONT




dashboardPage(
  skin = "blue",
  dashboardHeader(
    title = strong("A D M I N", style = "font-family: 'Comfortaa', cursive;"),
    titleWidth = 230
  ),
  
  
  dashboardSidebar(sidebarMenu(
    ##Isi side bar dimulai
    menuItem(
      text = "Home",
      tabName = "home",
      icon = icon("home")
    ),
    
    menuItem(
      text = "menu",
      tabName = "output",
      icon = icon("book"),
      badgeLabel = "new",
      badgeColor = "green"
    ),
    
    menuItem(
      "MESIN",
      icon = icon("clone"),
      menuSubItem(tabName = "mesin1", "MESIN 1", icon = icon("buffer")),
      menuSubItem(tabName = "mesin2", "MESIN 2", icon = icon("fill-drip")),
      menuSubItem(tabName = "mesin3", "MESIN 3", icon = icon("compress")),
      menuSubItem(tabName = "mesin4", "MESIN 4", icon = icon("grip-lines")),
      menuSubItem(tabName = "mesin5", "MESIN 5", icon = icon("expand-alt")),
      menuSubItem(tabName = "mesin6", "MESIN 6", icon = icon("sliders-h"))
    ),
    
    menuItem(
      text = "O E E",
      tabName = "oee",
      icon = icon("cogs")
    )
  )),
  ##isi side bar berakhir
  
  
  
  
  dashboardBody(tabItems(
    tabItem(
      tabName = "home",
      fluidRow(
        
        ##dalam value kamu bisa menggunakan fungsi R
        ##kaya yang dibawah ini
        
        valueBox(
          value = head(n, 1),
          width = 3,
          subtitle = strong("Bahan 1"),
          icon = icon("italic"),
          color = "red"
        ),
        
        valueBox(
          value = 0,
          width = 3,
          subtitle = strong("RP 2011"),
          icon = icon("Bahan 2"),
          color = "blue"
        ),
        valueBox(
          value = 1232,
          width = 3,
          subtitle = strong("Bahan 3"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = 0,
          width = 3,
          subtitle = strong("Bahan 4"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        valueBox(
          value = 213,
          width = 12,
          subtitle = strong("FORECAST Bahan"),
          icon = icon("hourglass-half"),
          color = "purple"
        ),
        
      )
    ),
    
    tabItem(tabName = "output",
            h2("Ini halaman Output"))
  ))
)