
# Capture message()
withConsoleRedirect <- function(containerId, expr) {
  txt <- capture.output(results <- expr, type = "message")
  if (length(txt) > 0) {
    insertUI(paste0("#", containerId), where = "beforeEnd",
             ui = paste0(txt, "\n", collapse = "")
    )
  }
  results
}



shinyServer(function(input, output, session) {
  
  
  
  
  
  ############################# Pictures and Videos ############################
  
  
  
  ######### Home Page ##########
  
  output$home_video <- renderUI({
    tags$iframe(
      width="100%",
      height="380",
      src="https://www.youtube.com/embed/rClJW9gnchc",
      frameborder="0",
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",
      allowfullscreen=NA
    )
  })
  
  
  
  ########## Detect Accident Page ##########
  
  output$detect_accident_picture <- renderUI({
    img(src = "https://pa1.narvii.com/6712/8241d047f7a0162344bacc29787e2fc761ed7a2f_hq.gif", 
        width = "100%", 
        height = "100%")
  })
  
  
  
  ########## Record Page ##########
  
  output$record_picture <- renderUI({
    if (loop$lpValues == 1) {
      img(src = "https://arabfashionweek.org/wp-content/uploads/2021/06/giphy.gif",
          width = "100%",
          height = "100%")
    }
    else {
      HTML("<br/><br/><br/>
           <img src='https://us.123rf.com/450wm/roxanabalint/roxanabalint1506/roxanabalint150600003/40907997-prep%C3%A1rense-grunge-sello-de-goma-en-blanco-ilustraci%C3%B3n-vectorial.jpg?ver=6'
            style='width: 100%; height: 100%'/>
           <br/><br/><br/>")
    }
  })
  
  
  
  ########## About Application Page ##########
  
  output$aboutApp_picture <- renderUI({
    img(src = "https://t3.ftcdn.net/jpg/02/82/25/90/360_F_282259064_WwnCyNgr1g0TV0X7ENqR8BA4xFmjzP4M.jpg",
        width = "80%",
        height = "80%")
  })
  
  
  
  ########## Natural Language Processing Page ##########
  
  output$nlp_picture <- renderUI({
    img(src = "https://cdn.dribbble.com/users/42048/screenshots/8350927/robotintro_dribble.gif", 
        width = "100%", 
        height = "100%")
  })
  
  output$nlp_video <- renderUI({
    tags$iframe(
      width="100%",
      height="480",
      src="https://www.youtube.com/embed/d4gGtcobq8M",
      frameborder="0",
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",
      allowfullscreen=NA
    )
  })
  
  
  
  ########## Architecth Page ##########
  
  output$architect_picture <- renderUI({
    img(src = "https://d3n817fwly711g.cloudfront.net/blog/wp-content/uploads/2011/09/flowchart-1-click-create.gif",
        width = "100%",
        height = "100%")
  })
  
  output$flowchart <- renderUI({
    img(src = "Flowchart_2.jpg", height = "100%", width = "100%")
  })
  
  
  
  ########## Profile Page ##########
  
  output$photo <- renderUI({
    img(src = "photo_crop.png", height = "100%", width = "100%")
  })
  
  output$shiny_dashboard <- renderUI({
    tags$a(tags$img(src='https://i1.wp.com/www.geekosas.com/wp-content/uploads/2019/03/shiny-logo.png?fit=321%2C325&ssl=1', height='50%', width='50%'), href = "https://mbagusdp.shinyapps.io/US_Car_Brands_Sales/")
  })
  
  output$rpubs <- renderUI({
    tags$a(tags$img(src='https://bradleykennedy.co.uk/assets/img/RPubs_icon.png', height='50%', width='50%'), href = "https://rpubs.com/MBagusDP")
  })
  
  output$github <- renderUI({
    tags$a(tags$img(src='https://cdn.uconnectlabs.com/wp-content/uploads/sites/46/2019/04/GitHub-Mark.png', height='37%', width='37%'), href = "https://github.com/MBagusDP")
  })
  
  output$linkedin <- renderUI({
    tags$a(tags$img(src='https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/768px-LinkedIn_logo_initials.png', height='27%', width='27%'), href = "https://www.linkedin.com/in/mbdp/P")
  })
  
  
  
  
  
  ################################### Icons ####################################
  
  
  
  ########## Detect Accident Page ##########
  
  output$led_indicator_green_2 <- renderUI({
    if (loop$lpValues == 1) {
      div(icon("circle", "fa-2x"), style = "color: lime")
    }
    else {
      div(icon("circle", "fa-2x"), style = "color: darkgreen")
    }
  })
  
  output$led_indicator_red_2 <- renderUI({
    if (loop$lpValues == 1) {
      div(icon("circle", "fa-2x"), style = "color: darkred")
    }
    else {
      div(icon("circle", "fa-2x"), style = "color: red")
    }
  })
  
  
  
  ########## Architecth Page ##########
  
  output$led_indicator_green <- renderUI({
    if (magnifier$mgValues == 1) {
      div(icon("circle", "fa-2x"), style = "color: lime")
    }
    else {
      div(icon("circle", "fa-2x"), style = "color: darkgreen")
    }
  })
  
  output$led_indicator_red <- renderUI({
    if (magnifier$mgValues == 1) {
      div(icon("circle", "fa-2x"), style = "color: darkred")
    }
    else {
      div(icon("circle", "fa-2x"), style = "color: red")
    }
  })
  
  
  
  
  
  ############################# Text and Messages ##############################
  
  
  
  ########## Welcoming message ##########
  
  showModal(
    modalDialog(
      easyClose = F,
      footer = tagList(column(width = 12, align = "center", actionBttn("beginTutorial", "Begin Tutorial", style = "fill"))),
      HTML('<html>
            <body>
                    
            <h1 style="text-align: center; color: #243447;"><img src="https://media2.giphy.com/media/4N3Mqhl8JRyYLapZgt/source.gif" style="width: 27%; height: 27%"/> To <img style="height: 35px; width: 40px" src="twitter_logo.png" /> <span style="color: #1DA1F2"><strong>Early Accident Detection App</strong></span></h1>
            <center><span style="color: #243447;"><i>An interactive application for detecting an accident using Twitter API.</i></span></center></p>
            <br />
            <img src="https://cdn.dribbble.com/users/1746237/screenshots/11273605/media/45251187ae80109cc4f20762a433e4c5.gif" style="width: 50%; height: 50%; display: block; margin-left: auto; margin-right: auto"/>
            <br />
            <center><span style="color: #243447;"><strong>The Usage Of Early Accident Detection:</strong></p></span></center>
            <small><li><img style="height: 25px; width: 25px" src="https://www.wilmslowhigh.com/wp-content/uploads/2019/06/Twitter.png" />
            <span style="color: #243447;"><i>  Utilizing the use of Twitter as a Social Media.</i></span></li></small>
            <small><li><img style="height: 25px; width: 25px" src="https://media.istockphoto.com/vectors/flashlight-warning-alarm-light-and-siren-light-flat-design-vector-vector-id1253926432?k=20&m=1253926432&s=612x612&w=0&h=TYhH9fl-Ru153JtkBdhDOqU-Pwxt48kekDq98jAeSH0=" />
            <span style="color: #243447;"><i>  Early warning system for when an accident happened.</i></span></li></small>
            <small><li><img style="height: 25px; width: 25px" src="https://st4.depositphotos.com/16138592/25642/v/450/depositphotos_256425998-stock-illustration-flat-icon-growth-chart-revenue.jpg" />
            <span style="color: #243447;"><i>  Improve the efficiency of accident handling situation.</i></span></li></small>
            <br />
            <br />
            <small><p style="text-align: left;"><span style="color: #ff0000;"><strong>WARNING:</strong><i> This application is using an infinte looping code, different specification of a computer might result in a different behavior. Please be cautious when running the application on a low perfoming computer.</i></span></p></small>
                   
                     
            </body>
            </html>')
    )
  )
  
  
  
  ########## Detect Accident Page ##########
  
  output$detect_accident_text <- renderUI({HTML(
    "<span style = 'font-size: 16px'>
    Many of us must have known what is called a Social Media, especially the young generation who are often
    exposed in it on a daily basis. We know that the information spread around in a mere of seconds in the
    Social Media as it is a way for people to freely broadcast informations anything, including the news
    that are on a trending topic. Some of us who actively use Social Media will definately want to record 
    some unique situation that are happening in their life and spread it around to gain some likes from
    other people.
    <br/><br/>
    In Twitter, information spread especially fast as it is a text based platform which makes it lighter
    application than other Social Media. furthermore, people tell stories or micro blogging about their
    lives in Twitter which makes it an excellent platform to gain information as fast as possible from an
    individual regarding news about an accident. Although some of us may not want to write any accident
    story that are happening in our lives as it may be embarrassing or innapropriate in our oppinion. 
    There are some people who are willingly write a story about an accident that are happening to them or 
    to other people around them. This page is made as a demo to how this application can help us find an
    accident earlier than waiting for someone to report it via verified news.
    </span>"
  )})
  
  
  
  ########## Record Page ###########
  
  output$record_text <- renderUI({HTML(
    "<span style = 'font-size: 16px'>
    <br/><br/>
    In this page, you can see the record of the accident that is happening each day. The counter stated
    the number of accident happning that day, and the data table are the record of the data that are
    requested from Twitter API recently.
    <br/><br/>
    In default setting, the counter and the data table regarding the accident text from Twitter will be 
    wiped clean after 24 hours and will be saved as a report in a form of .CSV files. We can determine 
    the duration of the record through the select input options below the accident counter infobox.
    <br/><br/><br/>
    </span>"
  )})
  
  
  
  ######### About Application Page ##########
  
  output$aboutApp_text <- renderUI({HTML(
    "<span style = 'font-size: 16px; color: black'>
    In today's society, people are always using their computer devices, especially smartphone. Through many 
    applications inside the phone, we can easily find any information that we desired. Nowadays, news that are 
    updated through Social Media applications can be obtained faster than the information that are searched manually
    through the internet browser, or news that are presented through a Television, given the option that many 
    Social Media applications are allowing the users to spread their own opinion freely. An application goes by the 
    name Twitter allowing us to gain information faster than any Social Media available today. This platform is 
    used to share their thoughts about many kind of things that are happening in their lives, or share the latest 
    news with the aim to make it go viral or a trending news where everyone can see. Unlike any other Social Media, 
    Twitter have this features where you can repost a tweet called retweet. the more retweet that our tweet gets, 
    the faster our tweet will spread.
    <br/><br/>
    This application was created to gain information about an accident as fast as possible through Twitter. 
    With the help of Twitter API, we can gain access through the tweeted texts of many different accounts. 
    Through text processing, we will be able to create a Machine Learning model which can help us identify 
    which text is about an accident and which text are not by going through keywords from each tweeted texts. 
    However, with the limited amount of time given to create this project, I surf through Kaggle.com to find 
    the dataset that I needed.
    intent and sentiment.</span>"
  )})
  
  
  
  ########## Natural Language Processing Page ##########
  
  output$nlp_text <- renderUI({HTML(
    "<span style = 'font-size: 16px'>Natural language processing (NLP) refers to the branch of computer science—and more specifically, 
    the branch of artificial intelligence or AI—concerned with giving computers the ability to understand text 
    and spoken words in much the same way human beings can.
    <br/><br/>
    NLP combines computational linguistics—rule-based modeling of human language—with statistical, machine 
    learning, and deep learning models. Together, these technologies enable computers to process human language 
    in the form of text or voice data and to ‘understand’ its full meaning, complete with the speaker or writer’s 
    intent and sentiment.</span>"
  )})
  
  
  
  
  ########## Architect Page ##########
  
  output$architect_text <- renderUI({HTML(
    "<span style = 'font-size: 16px'>
    Most programs are created based on the basic planing of how will the program works by creating a flowchart. 
    The flowchart are used to as a mean of brainstorming where it would then be used as a guide to create 
    the actual programing structure itself. The flowchart can keep us back on track from straying away to 
    far from the real goal when we create the programing structure.
    <br/><br/>
    In this page, the flowchart that are diplayed below can help you understand how the programing process,
    and the program flow works. This flowchart is the updated version of the original flowchart where it was
    used as a mean of brainstorming. However, it is not very far from the original flowchart.
    </span>"
  )})
  
  
  
  ########## Pofile Page ##########
  
  output$profile_text <- renderUI({HTML(
    "<span style = 'font-size: 16px'><br/>
    <div style='text-align: center'><b>Hi! 😃 I'm Bagus!</b></div><br/>
    I am a programming enthusiast who have recently graduated from Algoritma Data Science School. I am 
    fascinated with the way program is the closest things to producing anything that you can imagine
    into an actual product on your own. I have done several projects during my time studying in Algoritma 
    Data Science School. I am especially interested in developing an application from scratch where you have to
    brainstorming and find ideas on what to product should I develop just like this application. As long
    as there is a chance to learn and a guide to follow, There will be no reason for me to stop learning
    and honing my skill even further.
    <br/><br/>
    If you are interested in knowing me better, you can click on the picture that will link to my Social
    Media accounts. I excelled analyzing a data and building a dashboard from the provided data. I used
    R and Rstudio more than Python and SQL. At the moment I am deepening my knowledge in Python and SQL. 
    Get in touch with me via email at bagus.mbdp@gmail.com
    </span>"
  )})
  
  output$desc_shiny <- renderUI({HTML(
    "<span style = 'font-size: 16px'><br/>
    Check out my other interactive Shiny aplication dashboard about the increase of car price in United 
    States with the data that I obtain from Kaggle.com!
    </span>"
  )})
  
  output$desc_rpubs <- renderUI({HTML(
    "<span style = 'font-size: 16px'><br/>
    Check out my published data analysis about many different topics since August 2021 until recently!
    </span>"
  )})
  
  output$desc_github <- renderUI({HTML(
    "<span style = 'font-size: 16px'><br/>
    Check out a couple of projects that I have worked on in Python are published here in GitHub!
    </span>"
  )})
  
  output$desc_linkedin <- renderUI({HTML(
    "<span style = 'font-size: 16px'><br/>
    For more details about me, check out my linkedin profile!
    </span>"
  )})
  
  
  
  
  
  ################################# Charts #####################################
  
  
  
  ########## Home Page ##########
  
  output$sensus <- renderUI({
    hchart(sensus, "line", hcaes(tahun, jumlah_kecelakaan), color = "green",
           tooltip = list(pointFormat = "<span style='color:{point.color}; font-size: 16px'>\u25CF </span>
                                     Number of Accident: <b>{point.jumlah_kecelakaan_chr}</b><br/>")) %>% 
      hc_add_series(sensus, "line", hcaes(tahun, korban_mati_orang), color = "red",
                    tooltip = list(pointFormat = "<span style='color:{point.color}; font-size: 14px'>\u25C6 </span>
                                     Passed Away: <b>{point.korban_mati_orang_chr}</b><br/>")) %>% 
      hc_add_series(sensus, "line", hcaes(tahun, luka_berat_orang), color = "blue",
                    tooltip = list(pointFormat = "<span style='color:{point.color}; font-size: 16px'>\u25A0 </span>
                                     Heavily Injured: <b>{point.luka_berat_orang_chr}</b><br/>")) %>% 
      hc_add_series(sensus, "line", hcaes(tahun, luka_ringan_orang), color = "yellow",
                    tooltip = list(pointFormat = "<span style='color:{point.color}; font-size: 14px'>\u25B2 </span>
                                     Lightly Injured: <b>{point.luka_ringan_orang_chr}</b><br/>")) %>% 
      hc_add_series(sensus, "line", hcaes(tahun, kerugian_materi_juta_rupiah), color = "orange",
                    tooltip = list(pointFormat = "<span style='color:{point.color}; font-size: 14px'>\u25BC </span>
                                     Damage Cost: <b>{point.kerugian_materi_juta_rupiah_chr}</b> Million
                                     Rupiah")) %>% 
      hc_yAxis(crosshairs = T, title = list(text = "")) %>% 
      hc_tooltip(shared = T) %>% 
      hc_title(text = "Accident Census of Indonesia 2008-2019", align = "center") %>% 
      hc_add_theme(hc_theme_hcrt())
  })
  
  
  
  
  
  ######################## UI outputs and Dataframe ############################
  
  
  
  ########## SidebarMenu ##########
  
  output$sidebarMenu_home <- renderMenu({
    
    sidebarMenu(
      menuItem(text = "Home",
               icon = icon("home"),
               tabName = "home")
    )
    
  })
  
  output$sidebarMenu_record <- renderMenu({
    
    sidebarMenu(
      menuItem(text = "Accident Record",
               icon = icon("save"),
               tabName = "record")
    )
    
  })
  
  output$sidebarMenu_detect_accident <- renderMenu({
    
    sidebarMenu(
      menuItem(text = "Accident Information",
               icon = icon("comments"),
               tabName = "detect_accident")
    )
    
  })
  
  output$sidebarMenu_about <- renderUI({
    
    if (expand$exValues == 1) {
        
        sidebarMenu(
          menuItem(
            text = "About",
            icon = icon("info"),
            startExpanded = TRUE,
            
            menuSubItem(text = "Application",
                        icon = icon("globe"),
                        tabName = "about_app"),
            
            menuSubItem(text = "Natural Language Processing",
                        icon = icon("brain"),
                        tabName = "nlp"),
            
            menuSubItem(text = "Program Architecture",
                        icon = icon("network-wired"),
                        tabName = "architect"),
            
            menuSubItem(text = "Profile",
                        icon = icon("user"),
                        tabName = "profile")
            
          )
          
        )

    }
    else {

      sidebarMenu(
        menuItem(
          text = "About",
          icon = icon("info"),
          
          menuSubItem(text = "Application",
                      icon = icon("globe"),
                      tabName = "about_app"),
          
          menuSubItem(text = "Natural Language Processing",
                      icon = icon("brain"),
                      tabName = "nlp"),
          
          menuSubItem(text = "Program Architecture",
                      icon = icon("network-wired"),
                      tabName = "architect"),
          
          menuSubItem(text = "Profile",
                      icon = icon("user"),
                      tabName = "profile")
          
        )
        
      )

    }
    
  })
  
  output$expand_button <- renderUI({
    actionButton("expand", "text")
  })
  
  output$retract_button <- renderUI({
    actionButton("retract", "text")
  })
  
  
  
  ########## Detect Accident Page ##########
  
  
  ##### Accident infobox 1 #####
  output$pred_tweet1 <- renderUI({
    if (is.null(text$txtValues) == F) {
      if(obtain_prediction(text$txtValues)[1,2] > 0.5) {
        HTML("<i class='fas fa-bullhorn' style='font-size: 36px'></i> <i class='fas fa-exclamation-triangle' style='font-size: 36px'></i><span style='font-size: 38px'> Accident</span>")
      } 
      else {
        HTML("<i class='fas fa-bullhorn' style='font-size: 36px'></i><span style='font-size: 38px'> Not Accident</span>")
      }
    }
    else {
      HTML("<span style='font-size: 38px'>Standby</span>")
    }
  })
  
  output$extra_info1 <- renderUI({
    if (is.null(id$idValues) == F) {
      HTML(paste0("<br/>User ID: ", id$idValues[1], "<hr/>",
                  "Date: ", format(datetime$dtValues[1], "%d %B %Y"), "<hr/>",
                  # "Time: ", format(datetime$dtValues[1], "%X"), "<hr/>",
                  "Location: ", if(is.na(loc$locValues[1]) == T){"-"}else{loc$locValues[1]}, "<br/><br/>"))
    }
    else {
      HTML("Standby")
    }
  })
  
  
  ##### Accident infobox 2 #####
  output$pred_tweet2 <- renderUI({
    if (is.null(text$txtValues) == F) {
      if(obtain_prediction(text$txtValues)[2,2] > 0.5) {
        HTML("<i class='fas fa-bullhorn' style='font-size: 36px'></i> <i class='fas fa-exclamation-triangle' style='font-size: 36px'></i><span style='font-size: 38px'> Accident</span>")
      } 
      else {
        HTML("<i class='fas fa-bullhorn' style='font-size: 36px'></i><span style='font-size: 38px'> Not Accident</span>")
      }
    }
    else {
      HTML("<span style='font-size: 38px'>Standby</span>")
    }
  })
  
  output$extra_info2 <- renderUI({
    if (is.null(id$idValues) == F) {
      HTML(paste0("<br/>User ID: ", id$idValues[2], "<hr/>",
                  "Date: ", format(datetime$dtValues[2], "%d %B %Y"), "<hr/>",
                  # "Time: ", format(datetime$dtValues[2], "%X"), "<hr/>",
                  "Location: ", if(is.na(loc$locValues[2]) == T){"-"}else{loc$locValues[2]}, "<br/><br/>"))
    }
    else {
      HTML("Standby")
    }
  })
  
  
  ##### Accident infobox 3 #####
  output$pred_tweet3 <- renderUI({
    if (is.null(text$txtValues) == F) {
      if(obtain_prediction(text$txtValues)[3,2] > 0.5) {
        HTML("<i class='fas fa-bullhorn' style='font-size: 36px'></i> <i class='fas fa-exclamation-triangle' style='font-size: 36px'></i><span style='font-size: 38px'> Accident</span>")
      } 
      else {
        HTML("<i class='fas fa-bullhorn' style='font-size: 36px'></i><span style='font-size: 38px'> Not Accident</span>")
      }
    }
    else {
      HTML("<span style='font-size: 38px'>Standby</span>")
    }
  })
  
  output$extra_info3 <- renderUI({
    if (is.null(id$idValues) == F) {
      HTML(paste0("<br/>User ID: ", id$idValues[3], "<hr/>",
                  "Date: ", format(datetime$dtValues[3], "%d %B %Y"), "<hr/>",
                  # "Time: ", format(datetime$dtValues[3], "%X"), "<hr/>",
                  "Location: ", if(is.na(loc$locValues[3]) == T){"-"}else{loc$locValues[3]}, "<br/><br/>"))
    }
    else {
      HTML("Standby")
    }
  })
  
  
  ##### Embeded Twitter page 1 #####
  output$tweet1 <- renderUI({
    if (is.null(url$urlValues) == F) {
      tagList(tags$blockquote(class = "twitter-tweet",
                              tags$a(href = url$urlValues[1])),
              tags$script(async = NA, src = "https://platform.twitter.com/widgets.js")
      )
    }
    else {
      img(src = "https://i.pinimg.com/originals/33/cc/67/33cc6744d20bc617846ceeedfd781564.jpg",
          width = "100%",
          height = "100%")
    }
  })
  
  ##### Embeded Twitter page 2 #####
  output$tweet2 <- renderUI({
    if (is.null(url$urlValues) == F) {
      tagList(tags$blockquote(class = "twitter-tweet",
                              tags$a(href = url$urlValues[2])),
              tags$script(async = NA, src = "https://platform.twitter.com/widgets.js")
      )
    }
    else {
      img(src = "https://i.pinimg.com/originals/33/cc/67/33cc6744d20bc617846ceeedfd781564.jpg",
          width = "100%",
          height = "100%")
    }
  })
  
  ##### Embeded Twitter page 3 #####
  output$tweet3 <- renderUI({
    if (is.null(url$urlValues) == F) {
      tagList(tags$blockquote(class = "twitter-tweet",
                              tags$a(href = url$urlValues[3])),
              tags$script(async = NA, src = "https://platform.twitter.com/widgets.js")
      )
    }
    else {
      img(src = "https://i.pinimg.com/originals/33/cc/67/33cc6744d20bc617846ceeedfd781564.jpg",
          width = "100%",
          height = "100%")
    }
  })
  
  
  
  ########## Record Page ##########
  
  
  ##### Select input for the unit of time #####
  output$time_unit <- renderUI({
    selectInput("unit_time", 
                HTML("<span style='color: white'>Select the unit of time</span>"),
                c("minute", "hour"),
                "minute")
  })
  
  
  ##### Select input for the time counter #####
  output$time_select <- renderUI({
    if (input$unit_time == "hour") {
      numericInput("time", HTML("<span style='color: white'>Hours</span>"), 24, 1, 24, 1)
    }
    else {
      numericInput("time", HTML("<span style='color: white'>Minutes</span>"), 60, 1, 60, 1)
    }
  })
  
  
  ##### Directory input feedback #####
  output$dir_text <- renderText({
    if (is.null(dir$dirValues) == F) {
      dir$dirValues
    }
    else {
      "Folder path not found..."
    }
  })
  
  
  ##### Input director path for file record #####
  output$dir_input <- renderUI({
    shinyDirButton(
      "dir",
      "Choose Folder",
      "Please select a folder",
      "light"
    )
  })
  
  
  ##### Download button #####
  output$Download <- renderUI({
    if (loop$lpValues == 0) {
      if (is.null(dirText$ditValues) == F &&
          download$removeValues == paste0(dirText$ditValues, "/Accident_Record")) {
        downloadButton("downloadData", "Download files")
      }
    }
  })
  
  output$downloadData <- downloadHandler(
    filename = function() {paste("Accident_Record", "tar", sep=".")},
    content = function(file) {
      wd <- setwd(dirText$ditValues)
      on.exit(setwd(wd))
      tar(file, paste0("Accident_Record"))
    }
  )
  
  
  ##### Remove button #####
  output$remove <- renderUI({
    if (loop$lpValues == 0) {
      if (is.null(dirText$ditValues) == F &&
          download$removeValues == paste0(dirText$ditValues, "/Accident_Record")) {
        actionButton("removeData", "Remove files")
      }
    }
  })
  
  
  ##### Display accident count #####
  output$accident_count <- renderUI({
    
    withConsoleRedirect("console", {
    
      update$upValues
      reset$resetValues
      unit$unitValues
      acc_df$acc_dfValues
    
      if (standby$conValues > 0) {
        message(paste0("displayed accident count: ", readRDS("RDS/Accident_Count.RDS")))
        readRDS("RDS/Accident_Count.RDS")
      }
      else {
        message(paste0("standby values: ", standby$conValues))
        "Standby"
      }
      
    })
    
  })
  
  
  ##### Display the recorded accident dataframe #####
  output$table_record <- renderDataTable({
    
    withConsoleRedirect("console", {
    
      update$upValues
      reset$resetValues
      
      if (file.exists(paste0(dirText$ditValues, "/Accident_Record")) == F) {
        dir.create(paste0(dirText$ditValues, "/Accident_Record"))
        download$removeValues <- paste0(dirText$ditValues, "/Accident_Record")
        message("  (table_record) Accident_Record folder has been created!")
        message(paste0("    File path: ", dirText$ditValues))
      }
      
      if (loop$lpValues == 1 || reset$resetValues < 2) {
      
        if (is.null(unit$unitValues) == F) {
          if (unit$unitValues == "hour") {
    
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour")) == F) {
              dir.create(paste0(dirText$ditValues, "/Accident_Record/Hour"))
              message("  (renderDataTable) Hour folder has been created!")
              message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
            }
    
            i = 1
            while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", i, ".xlsx")) == T) {
              i = i + 1
            }
    
            if (i > 1) {
              acc_df$acc_dfValues <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", i-1, ".xlsx"))
              saveRDS(nrow(acc_df$acc_dfValues), "RDS/Accident_Count.RDS")
            }
            else {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", i, ".xlsx"))
              message(paste0("  (renderDataTable) Hourly_Accident_Record_", i, ".xlsx has been created!"))
              message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record/Hour"))
              saveRDS(0, "RDS/Accident_Count.RDS")
              acc_df$acc_dfValues <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", i, ".xlsx"))
            }
    
          }
          else {
    
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute")) == F) {
              dir.create(paste0(dirText$ditValues, "/Accident_Record/Minute"))
              message("  (renderDataTable) Minute folder has been created!")
              message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
            }
    
            i = 1
            while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", i, ".xlsx")) == T) {
              i = i + 1
            }
    
            if (i > 1) {
              acc_df$acc_dfValues <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", i-1, ".xlsx"))
              saveRDS(nrow(acc_df$acc_dfValues), "RDS/Accident_Count.RDS")
            }
            else {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", i, ".xlsx"))
              message(paste0("  (renderDataTable) MInutely_Accident_Record_", i, ".xlsx has been created!"))
              message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record/Minute"))
              saveRDS(0, "RDS/Accident_Count.RDS")
              acc_df$acc_dfValues <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", i, ".xlsx"))
            }
    
          }
        }
        
      }
      
      if (standby$conValues > 0) {
        if (nrow(acc_df$acc_dfValues) > 0) {
          acc_df$acc_dfValues %>%
            datatable(class = "cell-border stripe compact",
                      option = list(scrollX = T,
                                    scrollY = "450px"))
        }
        else {
          data.frame(information = "Data table has been emptied! please wait for an update!")
        }
      }
      else {
        data.frame(information = "Standby!")
      }
      
    })
    
  })
  
  
  
  
  
  ##################### Buttons and Reactive Values ############################
  
  
  
  ########## Reactive Values ##########
  
  
  volumes <- c(Home = fs::path_home())
  shinyDirChoose(input, "dir", roots = volumes, session = session, restrictions = system.file(package = "base"))
  
  dataFrame <- reactiveValues(dfValues = NULL)
  url <- reactiveValues(urlValues = NULL)
  text <- reactiveValues(txtValues = NULL)
  id <- reactiveValues(idValues = NULL)
  statusId <- reactiveValues(siValues = NULL)
  datetime <- reactiveValues(dtValues = NULL)
  loc <- reactiveValues(locValues = NULL)
  pred <- reactiveValues(pValues = 0)
  magnifier <- reactiveValues(mgValues = 0)
  loop <- reactiveValues(lpValues = 0)
  program <- reactiveValues(progValues = 0)
  unit <- reactiveValues(unitValues = NULL)
  num <- reactiveValues(numValues = 60)
  update <- reactiveValues(input = 0)
  timeUpt <- reactiveValues(tuValues = 60)
  counter <- reactiveValues(cValues = 0)
  dfNum <- reactiveValues(dnValues = 1)
  alert <- reactiveValues(aValues = 0)
  reset <- reactiveValues(resetValues = 0)
  update <- reactiveValues(upValues = 0)
  expand <- reactiveValues(exValues = 0)
  dirText <- reactiveValues(ditValues = NULL)
  dir <- reactiveValues(dirValues = NULL)
  acc_df <- reactiveValues(acc_dfValues = NULL)
  standby <- reactiveValues(conValues = 0)
  download <- reactiveValues(removeValues = NULL)
  
  
  
  ########## Modal Message and Tutorial ##########
  
  
  ##### Begin tutorial button #####
  observeEvent(input$beginTutorial, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$beginTutorial is running")
      removeModal()
      delay(500,
        introjs(
          session, 
          options = list("nextLabel" = "Continue",
                         "prevLabel" = "Previous",
                         "doneLabel" = "Thank you!",
                         "hidePrev" = TRUE,
                         "disableInteraction" = FALSE,
                         "showBullets" = FALSE,
                         "overlayOpacity" = 0.5),
          events = list("onchange" = I("if (this._currentStep==1) {
                                          $('#retract').trigger('click');
                                       }
  
                                       if (this._currentStep==2) {
                                          $('#expand').trigger('click');
                                       }
  
                                       if (this._currentStep==3) {
                                          $('#expand').trigger('click');
                                       }
  
                                       if (this._currentStep==4) {
                                          $('#retract').trigger('click');
                                          $('a[data-value=\"detect_accident\"]').trigger('click');
                                       }
  
                                       if (this._currentStep==7) {
                                          $('a[data-value=\"detect_accident\"]').trigger('click');
                                       }
  
                                       if (this._currentStep==8) {
                                          $('a[data-value=\"record\"]').trigger('click');
                                       }
                                       
                                       if (this._currentStep==10) {
                                          $('#console_box').closest('.box').find('[data-widget=collapse]').click();
                                       }
  
                                       if (this._currentStep==16) {
                                          $('a[data-value=\"record\"]').trigger('click');
                                          $('#retract').trigger('click');
                                       }
  
                                       if (this._currentStep==17) {
                                          $('#expand').trigger('click');
                                       }
  
                                       if (this._currentStep==18) {
                                          $('a[data-value=\"architect\"]').trigger('click');
                                          $('#console_box').closest('.box').find('[data-widget=collapse]').click();
                                       }
  
                                       if (this._currentStep==22) {
                                          $('a[data-value=\"architect\"]').trigger('click');
                                          $('#expand').trigger('click');
                                       }
  
                                       if (this._currentStep==23) {
                                          $('a[data-value=\"home\"]').trigger('click');
                                          $('#retract').trigger('click');
                                       }"))
          )
      )
      
    })
    
  })
  
  
  ##### Expand menuSubItem #####
  observeEvent(input$expand, {
    expand$exValues = 1
  })
  
  
  ##### Retract menuSubItem #####
  observeEvent(input$retract, {
    expand$exValues = 0
  })
  
  
  ##### Active sidebar id info #####
  observeEvent(input$sidebar_id, {
    withConsoleRedirect("console", {
      message("obEv input$sidebar_id is running")
      message(paste0("  Active page: ", input$sidebar_id))
    })
  })
  
  
  ##### Remove button #####
  observeEvent(input$removeData, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$removeData is running")
      wd <- setwd(dirText$ditValues)
      on.exit(setwd(wd))
      if (file.exists(paste0(dirText$ditValues, "/Accident_Record")) == T) {
        unlink("Accident_Record", T)
        download$removeValues <- dirText$ditValues
        if (update$upValues > 0) {
          update$upValues = 0
        }
        else {
          update$upValues = update$upValues + 1
        }
        shinyalert("Task has been successfully executed!",
                   paste0("folder Accident_Record from ", dirText$ditValues, " has been successfully removed!"),
                   "success")
      }
      
    })
    
  })
  
  
  ##### update download$removeValues #####
  observe({
    download$removeValues <- paste0(dirText$ditValues, "/Accident_Record")
  })
  
  
  ######## Architect Page ##########
  
  
  ##### Activate and deactivate custom magnifier glasses #####
  observeEvent(input$magnifierBtn, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$magnifierBtn is running")
      if(magnifier$mgValues == 0){
        message("  Magniying glass is activated!")
        magnifier$mgValues = magnifier$mgValues + 1
        session$sendCustomMessage(type = "magnifierOn",
                                  message = list())
      }
      else {
        message("  Magniying glass is deactivated!")
        magnifier$mgValues = 0
        session$sendCustomMessage(type = "magnifierOff",
                                  message = list())
      }
      
    })
    
  })
  
  
  
  ########## Detect Accident ##########
  
  
  ##### Begin and stop loop with a pushbutton #####
  observeEvent(input$loopBtn, {
    
    withConsoleRedirect("console", {
      
      message("obEv loopBtn is running")
      if (is.null(dirText$ditValues) == F) {
        if (loop$lpValues == 0) {
          message("  Program is starting!")
          
          if (file.exists(paste0(dirText$ditValues, "/Accident_Record")) == F) {
            dir.create(paste0(dirText$ditValues, "/Accident_Record"))
            download$removeValues <- paste0(dirText$ditValues, "/Accident_Record")
            message("  (obEv program$progValues and alert$avalue) Accident_Record folder has been created!")
            message(paste0("    File path: ", dirText$ditValues))
          }
          
          delay(1, loop$lpValues <- 1)
          standby$conValues <- 1
          
        }
        else {
          shinyalert("Are you sure you want to stop the program?",
                     type = "warning",
                     showCancelButton = T,
                     cancelButtonText = "CANCEL",
                     inputId = "alert_loopBtn")
        }
      }
      else {
        shinyalert("Directory file path is not found!",
                   "Please choose a directory file path in the record page before starting the program",
                   "error")
      }
      
    })
    
  })
  
  
  ##### Update reactive values when button is pressed #####
  observeEvent(input$alert_loopBtn, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$alert_loopBtn is running")
      message("  Program terminated!")
      if (input$alert_loopBtn == T) {
        loop$lpValues <- 0
        program$progValues <- 0
      }
      
    })
    
  })
  
  
  ##### Request data from Tweeter API every 10 seconds #####
  observeEvent(c(loop$lpValues, program$progValues), {
    
    withConsoleRedirect("console", {
      
      message("obEv program$progValues API is running")
      message(paste0("  Loop count: ", program$progValues, " ##########################################################################"))
      message("  Requesting tweets from Twitter API...")
      if(loop$lpValues == 1){
        
        dataframe <- search_tweets("kecelakaan -filter:retweets -filter:replies -filter:verified",
                                   n = 4,
                                   type = "recent",
                                   lang = "id",
                                   retryonratelimit = F,
                                   token = Token)
        
        num_row <- nrow(dataframe %>% filter(!status_id %in% dataFrame$dfValues$status_id))
        
        if (num_row > 0 || is.null(dataFrame$dfValues) == T) {
          message("  New tweets found!")
          dataFrame$dfValues <- dataframe
        }
        
        delay(
          10000, 
          if (loop$lpValues == 1) {
            program$progValues <- program$progValues + 1
          }
        )
        
      }
      
    })
    
  })
  
  
  ##### Update data if there is a new tweet #####
  observeEvent(dataFrame$dfValues, {
    
    withConsoleRedirect("console", {
      
      message("obEv dataFrame$dfValues is running")
      message("  Separating values...")
      url$urlValues <- dataFrame$dfValues$status_url
      text$txtValues <- dataFrame$dfValues$text
      id$idValues <- dataFrame$dfValues$user_id
      statusId$siValues <- dataFrame$dfValues$status_id
      datetime$dtValues <- dataFrame$dfValues$created_at
      loc$locValues <- dataFrame$dfValues$location
      message(paste0("  New data: ", nrow(dataFrame$dfValues %>% filter(!status_id %in% dataFrame$dfValues$status_id))))
      message(url$urlValues[1])
      message(text$txtValues[1])
      
    })
    
  })
  
  
  #### Show popup message if an accident is found #####
  observeEvent(statusId$siValues, {
    
    withConsoleRedirect("console", {
      
      message("obEv statusId$siValues is running")
      message("  Counting accident...")
      
      count = 0
      
      if (statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[1] &&
          statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[2]) {
        # message("step_alert_3")
        if (statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[3] &&
            obtain_prediction(text$txtValues)[3,2] > 0.5) {
          
          message("  1 accident on the 3rd tweet...")
          count = count + 1
          
        }
      }
      
      if (statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[1] &&
          statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[2]) {
        # message("step_alert_2")
        if (statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[3] &&
            obtain_prediction(text$txtValues)[2,2] > 0.5) {
          
          message("  1 accident on the 2nd tweet...")
          count = count + 1
          
        }
      }
      
      if (statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[1] &&
          statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[2]) {
        # message("step_alert_1")
        if (statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[3] &&
            obtain_prediction(text$txtValues)[1,2] > 0.5) {
          
          message("  1 accident on the 1st tweet...")
          count = count + 1
          
        }
      }
      
      if (count > 0) {
        message(paste0("  ", count, " Accident found!"))
        if (alert$aValues > 0) {
          alert$aValues = 0
        }
        else {
          alert$aValues = alert$aValues + 1
        }
        if (input$sidebar_id == "detect_accident" || input$sidebar_id == "record") {
          shinyalert("Accident Found!",
                     paste0(count, " new accident report has been found"),
                     type = "warning",
                     closeOnEsc = T,
                     closeOnClickOutside = T,
                     timer = 5000)
        }
      }
      else {
        message("  No accident found...")
      }
      
    })
    
  })
  
  
  
  ########## Record ##########
  
  
  ##### Button for choosing folder directory path #####
  observeEvent(input$dir, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$dir is running")
      if (rlang::is_empty(as.character(parseDirPath(volumes, input$dir))) == F) {
        dir$dirValues <- as.character(parseDirPath(volumes, input$dir))
        message(paste0("  Chosen folder directory: ", dir$dirValues))
      }
      else {
        message("  Choosing files...")
      }
      
    })
    
  })
  
  
  ##### Record and display the count and the dataframe if an accident is found #####
  observeEvent(c(program$progValues, alert$aValues), {
    
    withConsoleRedirect("console", {
      
      message("obEv program$progValues and alert$avalues Record is running")
      
      # message(paste0("  Hour_Minute object read: ", readRDS("RDS/Hour_Minute.RDS")))
      num_time <- floor(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")) - readRDS("RDS/Hour_Minute.RDS"))
      pred$pValues = 0
      dfNum$dnValues = 1
      
      if(unit$unitValues == "hour" && is.null(unit$unitValues) == F) {
        
        message("  Time unit: Hour")
        
        if (is.null(dirText$ditValues) == T) {
          message("Directory file path not found, waiting for input")
        }
        else {
        
          if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour")) == F){
            dir.create(paste0(dirText$ditValues, "/Accident_Record/Hour"))
            message("  (obEv program$progValues) Hour folder has been created!")
            message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
          }
          
          while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
            dfNum$dnValues = dfNum$dnValues + 1
          }
          
          if (dfNum$dnValues > 1) {
            df_accident <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues-1, ".xlsx"))
          }
          else {
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
              df_accident <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
            }
            else {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              df_accident <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              message("  (obEv program$progValues) Hourly_Accident_Record_", dfNum$dnValues, " has been created!")
              message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Hour"))
            }
          }
          
          
          
          if (num_time/3600 < num$numValues) {
            
            if (num$numValues > 1) {
              message(paste0("  Remaining count in hour: ", ceiling(num$numValues - num_time/3600)))
            }
            else {
              if (ceiling(num$numValues - num_time/60) > 1) {
                message(paste0("  Remaining count in minute: ", ceiling(num$numValues*60 - num_time/60)))
              }
              else {
                message(paste0("  Remaining count in second: ", ceiling(num$numValues*3600 - num_time)))
              }
            }
            
            if (statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[1] &&
                statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[2]) {
              # message("  step_hour_3")
              if (statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[3] &&
                  obtain_prediction(text$txtValues)[3,2] > 0.5) {
                
                message("  Tweet about an accident found in the 3rd position!")
                pred$pValues <- pred$pValues + 1
                df_accident <- rbind(dataFrame$dfValues[3,], df_accident)
                
              }
            }
            
            if (statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[1] &&
                statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[2]) {
              # message("  step_hour_2")
              if (statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[3] &&
                  obtain_prediction(text$txtValues)[2,2] > 0.5) {
                
                message("  Tweet about an accident found in the 2nd position!")
                pred$pValues <- pred$pValues + 1
                df_accident <- rbind(dataFrame$dfValues[2,], df_accident)
                
              }
            }
            
            if (statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[1] &&
                statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[2]) {
              # message("  step_hour_1")
              if (statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[3] &&
                  obtain_prediction(text$txtValues)[1,2] > 0.5) {
                
                message("  Tweet about an accident found in the 1st position!")
                pred$pValues <- pred$pValues + 1
                df_accident <- rbind(dataFrame$dfValues[1,], df_accident)
                
              }
            }
            
            # message(paste0("Hour pred$pValues: ", pred$pValues))
            
            if (pred$pValues > 0) {
              
              pred$pValues <- pred$pValues + readRDS("RDS/Accident_Count.RDS")
              saveRDS(pred$pValues, "RDS/Accident_Count.RDS")
              
              if (dfNum$dnValues > 1) {
                write_xlsx(df_accident, paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues-1, ".xlsx"))
              }
              else {
                write_xlsx(df_accident, paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              }
              
              if (update$upValues > 0) {
                update$upValues = 0
              }
              else {
                update$upValues = update$upValues + 1
              }
              
            }
            
            saveRDS(statusId$siValues, "RDS/Status_Id.RDS")
            
          }
          else {
            
            message("  Counter has reach 0, restarting the count!")
            
            saveRDS(0, "RDS/Accident_Count.RDS")
            saveRDS(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")), "RDS/Hour_Minute.RDS")
            saveRDS(format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y"), "RDS/System_Time.RDS")
            
            if (nrow(real_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues-1, ".xlsx"))) > 0) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              message(paste0("  (obEv program$progValues) Hourly_Accident_Record_", dfNum$dnValues, " has been created!"))
              message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Hour"))
            }
            
            if (alert$aValues > 0) {
              alert$aValues = 0
            }
            else {
              alert$aValues = alert$aValues + 1
            }
            
            if (input$sidebar_id == "detect_accident" || input$sidebar_id == "record") {
              shinyalert("The counter has reach 0!",
                         paste0("The accident counter and the accident dataframe will be removed! ", "New counter begin at: ", format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y")),
                         "warning",
                         timer = 5000,
                         immediate = T)
            }
            
          }
          
          message(paste0("  Accident count: ", pred$pValues))
          message(paste0("  Total accident data found: ", nrow(df_accident)))
        
        }
        
        # message(paste0("  accident count: ", readRDS("RDS/Accident_Count.RDS")))
        
      }
      else if (unit$unitValues == "minute" && is.null(unit$unitValues) == F) {
        
        message("  Minute")
        
        if (is.null(dirText$ditValues) == T) {
          message("Directory file path not found, waiting for input")
        }
        else {
        
          if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute")) == F){
            dir.create(paste0(dirText$ditValues, "/Accident_Record/Minute"))
            message(paste0("  (obEv program$progValues) Minute folder has been created!"))
            message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
          }
          
          while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
            dfNum$dnValues = dfNum$dnValues + 1
          }
          
          if (dfNum$dnValues > 1) {
            df_accident <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues-1, ".xlsx"))
          }
          else {
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
              df_accident <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
            }
            else {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              df_accident <- read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              message(paste0("  (obEv program$progValues) Minutely_Accident_Record_", dfNum$dnValues, " has been created!"))
              message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Minute"))
            }
          }
          
          if (num_time/60 < num$numValues) {
            
            if (ceiling(num$numValues - num_time/60) > 1) {
              message(paste0("  Remaining count in minute: ", ceiling(num$numValues - num_time/60)))
            }
            else {
              message(paste0("  Remaining count in second: ", ceiling(num$numValues*60 - num_time)))
            }
            
            if (statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[1] &&
                statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[2]) {
              # message("  step_minute_3")
              if (statusId$siValues[3] != readRDS("RDS/Status_Id.RDS")[3] &&
                  obtain_prediction(text$txtValues)[3,2] > 0.5) {
                
                message("  Tweet about an accident found in the 3rd position!")
                pred$pValues <- pred$pValues + 1
                df_accident <- rbind(dataFrame$dfValues[3,], df_accident)
                
              }
            }
            
            if (statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[1] &&
                statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[2]) {
              # message("  step_minute_2")
              if (statusId$siValues[2] != readRDS("RDS/Status_Id.RDS")[3] &&
                  obtain_prediction(text$txtValues)[2,2] > 0.5) {
                
                message("  Tweet about an accident found in the 2nd position!")
                pred$pValues <- pred$pValues + 1
                df_accident <- rbind(dataFrame$dfValues[2,], df_accident)
                
              }
            }
            
            if (statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[1] &&
                statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[2]) {
              # message("  step_minute_1")
              if (statusId$siValues[1] != readRDS("RDS/Status_Id.RDS")[3] &&
                  obtain_prediction(text$txtValues)[1,2] > 0.5) {
                
                message("  Tweet about an accident found in the 1st position!")
                pred$pValues <- pred$pValues + 1
                df_accident <- rbind(dataFrame$dfValues[1,], df_accident)
                
              }
            }
            
            # message(paste0("  Minute pred$pValues: ", pred$pValues))
            
            if (pred$pValues > 0) {
              
              pred$pValues = pred$pValues + readRDS("RDS/Accident_Count.RDS")
              saveRDS(pred$pValues, "RDS/Accident_Count.RDS")
              
              if (dfNum$dnValues > 1) {
                write_xlsx(df_accident, paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues-1, ".xlsx"))
              }
              else {
                write_xlsx(df_accident, paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              }
              
              if (update$upValues > 0) {
                update$upValues = 0
              }
              else {
                update$upValues = update$upValues + 1
              }
              
            }
            
            saveRDS(statusId$siValues, "RDS/Status_Id.RDS")
            
          }
          else {
            
            saveRDS(0, "RDS/Accident_Count.RDS")
            saveRDS(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")), "RDS/Hour_Minute.RDS")
            saveRDS(format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y"), "RDS/System_Time.RDS")
            
            if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues-1, ".xlsx"))) > 0) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              message(paste0("  (obEv program$progValues) Minutely_Accident_Record_", dfNum$dnValues, " has been created!"))
              message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Minute"))
            }
            
            if (alert$aValues > 0) {
              alert$aValues = 0
            }
            else {
              alert$aValues = alert$aValues + 1
            }
            
            if (input$sidebar_id == "detect_accident" || input$sidebar_id == "record") {
              shinyalert("The counter has reach 0!",
                         paste0("The accident counter and the accident dataframe will be removed! ", "New counter begin at: ", format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y")),
                         "warning",
                         timer = 5000,
                         immediate = T)
            }
            
          }
          
          message(paste0("  Accident count: ", pred$pValues))
          message(paste0("  Total accident data found: ", nrow(df_accident)))
          
        }
        
        # message(paste0("  accident count: ", readRDS("RDS/Accident_Count.RDS")))
        
      }
      else {
        message("  unit$unitValues is NULL...")
      }
      
    })
    
  })
  
  
  ##### Submit button for updating the select input values for the counter #####
  observeEvent(input$submitBtn, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$submitBtn is running")
      message("  Submit button is pressed")
      
      if (loop$lpValues == 0) {
        
        if (input$unit_time == "hour") {
          message("  Time unit: hour")
          if (is.null(dir$dirValues) == F){
            dirText$ditValues <- dir$dirValues
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record")) == F) {
              dir.create(paste0(dirText$ditValues, "/Accident_Record"))
              download$removeValues <- paste0(dirText$ditValues, "/Accident_Record")
              message("  (obEv input$submitBtn) Accident_Record folder has been created!")
              message(paste0("    Folder path: ", dirText$ditValues))
            }
            if (is.numeric(input$time) == T && input$time >= 0 && input$time <= 24) {
              shinyalert(
                "Warning",
                "Would you like to restart the counter? press No if you want to resume from where the counter is last updated",
                "warning",
                showCancelButton = T,
                cancelButtonText = "No",
                inputId = "submit_alert"
              )
            }
            else {
              shinyalert("Counter input is not acceptable!",
                         "Please input a numerical value in a range of 1 to 24",
                         "error")
            }
          }
          else {
            shinyalert("Directory file path is not found!",
                       "Please choose a directory file path before submitting",
                       "error")
          }
        }
        else {
          message("  Time unit: minute")
          if (is.null(dir$dirValues) == F){
            dirText$ditValues <- dir$dirValues
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record")) == F) {
              dir.create(paste0(dirText$ditValues, "/Accident_Record"))
              download$removeValues <- paste0(dirText$ditValues, "/Accident_Record")
              message("  (obEv input$submitBtn) Accident_Record folder has been created!")
              message(paste0("    File path: ", dirText$ditValues))
            }
            if (is.numeric(input$time) == T && input$time >= 1 && input$time <= 60) {
              shinyalert(
                "Warning",
                "Would you like to restart the counter? press No if you want to resume from where the counter is last updated",
                "warning",
                showCancelButton = T,
                cancelButtonText = "No",
                inputId = "submit_alert"
              )
            }
            else {
              shinyalert("Counter input is not acceptable!",
                         "Please input a numerical value in a range of 1 to 60",
                         "error")
            }
          }
          else {
            shinyalert("Directory file path is not found!",
                       "Please choose a directory file path before submitting",
                       "error")
          }
        }
        
      }
      else {
        shinyalert("Submision Denied!", "You cannot change the parameter while the program is running!", "error")
      }
      
    })
    
  })
  
  
  ##### Show alert depending of the selected choice of the popup message of the submit button #####
  observeEvent(input$submit_alert, {
    
    withConsoleRedirect("console", {
      
      message("obEv input$submit_alert is running")
      
      unit$unitValues = input$unit_time
      num$numValues = input$time
      
      if (input$submit_alert == T) {
        message("  Selection: OK")
        
        saveRDS(0, "RDS/Accident_Count.RDS")
        saveRDS(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")), "RDS/Hour_Minute.RDS")
        saveRDS(format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y"), "RDS/System_Time.RDS")
        
        if (unit$unitValues == "hour") {
          
          if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour")) == F){
            dir.create(paste0(dirText$ditValues, "/Accident_Record/Hour"))
            message("  (obEv input$submit_alert) Hour folder has been created!")
            message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
          }
          
          dfNum$dnValues <- 1
          
          while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
            dfNum$dnValues = dfNum$dnValues + 1
          }
          
          if (dfNum$dnValues > 1) {
            if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues-1, ".xlsx"))) > 0) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
            }
          }
          else {
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx")) == F) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              message(paste0("  (obEv input$submit_alert) Hourly_Accident_Record_", dfNum$dnValues," folder has been created!"))
              message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Hour"))
            }
            else if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))) > 0) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
            }
          }
          
        }
        else {
          
          if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute")) == F){
            dir.create(paste0(dirText$ditValues, "/Accident_Record/Minute"))
            message("  (obEv input$submit_alert) Minute folder has been created!")
            message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
          }
          
          dfNum$dnValues <- 1
          
          while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
            dfNum$dnValues = dfNum$dnValues + 1
          }
          
          if (dfNum$dnValues > 1) {
            if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues-1, ".xlsx"))) > 0) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
            }
          }
          else {
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx")) == F) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              message(paste0("  (obEv input$submit_alert) Minutely_Accident_Record_", dfNum$dnValues," folder has been created!"))
              message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Minute"))
            }
            else if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))) > 0) {
              write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
            }
          }
          
        }
        
        if (reset$resetValues > 0) {
          reset$resetValues = 0
        }
        else {
          reset$resetValues = reset$resetValues + 1
        }
        
        shinyalert("The counter has been successfully restarted!",
                   paste0("New counter begin at: ", format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y")),
                   "success")
        
      }
      else {
        message("  Selection: CANCEL")
        
        if (unit$unitValues == "hour") {
          
          if (num$numValues > 1) {
            counter_left <- ceiling(num$numValues - floor(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")) - readRDS("RDS/Hour_Minute.RDS"))/3600)
          }
          else {
            counter_left <- ceiling(num$numValues - floor(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")) - readRDS("RDS/Hour_Minute.RDS"))/60)
          }
          
          if (num$numValues == timeUpt$tuValues && counter_left > 0) {
            
            if (num$numValues > 1) {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " hour, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in hour: ", counter_left))
            }
            else {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " seconds, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in minute: ", counter_left))
            }
            
          }
          else if (num$numValues != timeUpt$tuValues && counter_left > 0) {
            
            if (num$numValues > 1) {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " hour, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in hour: ", counter_left))
            }
            else {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " seconds, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in minute: ", counter_left))
            }
            
          }
          else {
            
            timeUpt$tuValues = num$numValues
            saveRDS(0, "RDS/Accident_Count.RDS")
            saveRDS(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")), "RDS/Hour_Minute.RDS")
            saveRDS(format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y"), "RDS/System_Time.RDS")
            
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour")) == F){
              dir.create(paste0(dirText$ditValues, "/Accident_Record/Hour"))
              message("  (obEv input$submit_alert) Hour folder has been created!")
              message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
            }
            
            dfNum$dnValues <- 1
            
            while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
              dfNum$dnValues = dfNum$dnValues + 1
            }
            
            if (dfNum$dnValues > 1) {
              if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues-1, ".xlsx"))) > 0) {
                write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              }
              message(paste0("  Remaining counter in hour: ", counter_left))
            }
            else {
              if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx")) == F) {
                write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
                message(paste0("  (obEv input$submit_alert) Hourly_Accident_Record_", dfNum$dnValues," folder has been created!"))
                message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Hour"))
              }
              else if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))) > 0) {
                write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Hour/Hourly_Accident_Record_", dfNum$dnValues, ".xlsx"))
              }
              message(paste0("  Remaining counter in minute: ", counter_left))
            }
            
            if (reset$resetValues > 0) {
              reset$resetValues = 0
            }
            else {
              reset$resetValues = reset$resetValues + 1
            }
            
            shinyalert("The counter has reach 0!",
                       paste0("The Accident counter and the API dataframe will be removed! ", 
                              "New counter begin at: ", 
                              format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y")),
                       "warning",
                       immediate = T)
          }
          
        }
        else {
          
          if (num$numValues > 1) {
            counter_left <- ceiling(num$numValues - floor(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")) - readRDS("RDS/Hour_Minute.RDS"))/60)
          }
          else {
            counter_left <- ceiling(60 - floor(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")) - readRDS("RDS/Hour_Minute.RDS")))
          }
          
          if (num$numValues == timeUpt$tuValues && counter_left > 0) {
            
            if (num$numValues > 1) {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " minutes, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in minute: ", counter_left))
            }
            else {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " seconds, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in second: ", counter_left))
            }
            
          }
          else if (num$numValues != timeUpt$tuValues && counter_left > 0) {
            
            if (num$numValues > 1) {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " minutes, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in minute: ", counter_left))
            }
            else {
              shinyalert("The counter will begin from where it was last updated!",
                         paste0("Remaining counter: ", 
                                counter_left, 
                                " seconds, latest update from: ", readRDS("RDS/System_Time.RDS")),
                         "info")
              message(paste0("  Remaining counter in second: ", counter_left))
            }
            
          }
          else {
            
            timeUpt$tuValues = num$numValues
            saveRDS(0, "RDS/Accident_Count.RDS")
            saveRDS(as.numeric(with_tz(Sys.time(), "Asia/Jakarta")), "RDS/Hour_Minute.RDS")
            saveRDS(format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y"), "RDS/System_Time.RDS")
            
            if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute")) == F){
              dir.create(paste0(dirText$ditValues, "/Accident_Record/Minute"))
              message("  (obEv input$submit_alert) Minute folder has been created!")
              message(paste0("    Folder path: ", dirText$ditValues, "/Accident_Record"))
            }
            
            dfNum$dnValues <- 1
            
            while(file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx")) == T) {
              dfNum$dnValues = dfNum$dnValues + 1
            }
            
            if (dfNum$dnValues > 1) {
              if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues-1, ".xlsx"))) > 0) {
                write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              }
              message(paste0("  Remaining counter in minute: ", counter_left))
            }
            else {
              if (file.exists(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx")) == F) {
                write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
                message(paste0("  (obEv input$submit_alert) Minutely_Accident_Record_", dfNum$dnValues," folder has been created!"))
                message(paste0("    File path: ", dirText$ditValues, "/Accident_Record/Minute"))
              }
              else if (nrow(read_xlsx(paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))) > 0) {
                write_xlsx(data.frame(), paste0(dirText$ditValues, "/Accident_Record/Minute/Minutely_Accident_Record_", dfNum$dnValues, ".xlsx"))
              }
              message(paste0("  Remaining counter in second: ", counter_left))
            }
            
            if (reset$resetValues > 0) {
              reset$resetValues = 0
            }
            else {
              reset$resetValues = reset$resetValues + 1
            }
            
            shinyalert("The counter has reach 0!",
                       paste0("The Accident counter and the API dataframe will be removed! ", 
                              "New counter begin at: ", 
                              format(with_tz(Sys.time(), "Asia/Jakarta"), "%X, %d %B %Y")),
                       "warning",
                       immediate = T)
          }
          
        }
        
      }
      
    })
    
  })
  
  

})