
# Call custom theme function from another script
source("custom_theme.R")


# Shiny app
shinyUI(
  
  # Shiny dashboard
  dashboardPage(
    
                # Web browser tab title name
                title = "Early Accident Detection",
    
    # Dashboard header
    dashboardHeader(
      
                    # Header title
                    title = tags$a(tags$img(src='https://www.freeiconspng.com/uploads/logo-twitter-picture-download-14.png', height='15', width='20'),
                                   span("Early Accident Detection", style = "color: white; font-weight: bold; font-size: 14px")),
                    
                    # Dropdown messages
                    dropdownMenu(type = "messages",
                                 icon = icon("envelope", "fa-2x"),
                                 headerText = "Feedback and Suggestions",
                                 
                                 messageItem(
                                   
                                   from = "Mohammad Bagus Dwi Putra",
                                   message = "bagus.mbdp@gmail.com",
                                   href = "mailto:bagus.mbdp@gmail.com",
                                   icon = tags$i(
                                     class = "fa fa-google", 
                                     style = "color: #1DA1F2",
                                     size = "fa-2x"
                                   )
                                   
                                 )
                                 
                    ),
                    dropdownMenu(type = "messages",
                                 icon = icon("share-alt", "fa-2x"),
                                 headerText = "My Social Media",
                                 
                                 messageItem(
                                   
                                   from = "GitHub",
                                   message = "MBagusDP",
                                   href = "https://github.com/MBagusDP",
                                   icon = tags$i(
                                     class = "fa fa-github", 
                                     style = "color: #1DA1F2",
                                     size = "fa-2x"
                                   )
                                   
                                 ),
                                 
                                 messageItem(
                                   
                                   from = "Rpubs",
                                   message = "MBagusDP",
                                   href = "https://rpubs.com/MBagusDP",
                                   icon = tags$i(
                                     class = "fab fa-r-project", 
                                     style = "color: #1DA1F2",
                                     size = "fa-2x"
                                   )
                                   
                                 ),
                                 
                                 messageItem(
                                   
                                   from = "LinkedIn",
                                   message = "MBagusDP",
                                   href = "https://www.linkedin.com/in/mbdp/",
                                   icon = tags$i(
                                     class = "fa fa-linkedin", 
                                     style = "color: #1DA1F2",
                                     size = "fa-2x"
                                   )
                                   
                                 )
                                 
                    )
                    
    ),
    
    # Dashboard sidebar
    dashboardSidebar(
      
      # IntroBox for interactive introduction guide
      introBox(

        data.step = 1,
        data.position = "right",
        data.intro = "There are a total of 4 pages in this application",
        
        # Sidebar menu
        sidebarMenu(id = "sidebar_id",
          
          # Sidebar menu named Home
          sidebarMenuOutput("sidebarMenu_home"),
          
          # IntroBox for interactive introduction guide
          introBox(
  
            data.step = 2,
            data.position = "right",
            data.intro = "These are the two main pages of this application which 
            lets us gain information about an accident from Twitter",
  
            # IntroBox for interactive introduction guide
            introBox(
              data.step = 9,
              data.position = "right",
              data.intro = "Now let us go to where the data will be captured and stored",
              
              # Sidebar menu named Accident Record
              sidebarMenuOutput("sidebarMenu_record")
            ),
            
            # IntroBox for interactive introduction guide
            introBox(
              data.step = 5,
              data.position = "right",
              data.intro = "Let's go to the main page of this application, the 
              acccident detection system",
              
              # Sidebar menu Accident Information
              sidebarMenuOutput("sidebarMenu_detect_accident")
            )
            
          ),
          
          # IntroBox for interactive introduction guide
          introBox(
  
            data.step = 3,
            data.position = "right",
            data.intro = "Information regarding this application can be found in here",
  
            # IntroBox for interactive introduction guide
            introBox(
  
              data.step = 4,
              data.position = "right",
              data.intro = "You can find many information from the sub pages about 
              this application, including my profile",
              
              # IntroBox for interactive introduction guide
              introBox(
                
                data.step = 19,
                data.intro = "Now let's go back here",
                
                # IntroBox for interactive introduction guide
                introBox(
                  
                  data.step = 20,
                  data.intro = "And choose the Program Architecture page",
              
                  # Sidebar menu named About
                  uiOutput("sidebarMenu_about")
                
                )
                
              )
            
            )
            
          )
        
        )
        
      )
      
    ),
    
    dashboardBody(customTheme,
                  
                  # include introjs
                  introjsUI(),
                  
                  # include shinyjs
                  useShinyjs(),
                  
                  # include shinyalert
                  useShinyalert(),
                  
                  # Hidden button for tutorial introduction purpose. This stores
                  # dummy values for the sake of simulating the expand and
                  # retract of the sidebar menu named About
                  column(width = 12, align = "right", uiOutput("expand_button")),
                  column(width = 12, align = "right", uiOutput("retract_button")),
                  
                  

################# Customize Shiny App Display ##################################

                  tags$head(
                    
                    # Function for virtual magnifier glasses
                    tags$script(src = "jquery.elevatezoom.min.js"),
                    tags$script('Shiny.addCustomMessageHandler("magnifierOn",
                                                               function(message) {
                                                                 $("#flowchart img").elevateZoom({scrollZoom: true,
                                                                                                  zoomType: "lens",
                                                                                                  lensShape: "round"});
                                                               });'),
                    tags$script('Shiny.addCustomMessageHandler("magnifierOff",
                                                               function(message) {
                                                                 $.removeData($("#flowchart img"), "elevateZoom");
                                                                 $(".zoomContainer").remove();
                                                               });'),
                    
                    # Custom CSS for buttons and logo
                    tags$style(HTML(
                    
                    "
                    
                    .fa-envelope {color: #1DA1F2}
                    .fa-share-alt {color: #1DA1F2}
                    .fa-times {color: #FF0000}
                    .fa-check-circle {color: white}
                    .fa-robot {color: #D291BC}
                    .fa-car-crash {color: #FFBF00}
                    .fa-project-diagram {color:darkgreen}
                    .fa-exclamation-triangle {color: #FF2015}
                    .fa-file-code {color: #63DFC5}
                    
                    .small-box.bg-blue {background-color: #1DA1F2!important}
                    
                    .alert-info, .bg-aqua, .callout.callout-info, .label-info, .modal-info .modal-body {background-color: #1DA1F2!important}
                    .info-box-icon {background: #1DA1F2}
                    
                    .box.box-solid.box-primary>.box-header {background: #1DA1F2}
                    .box.box-solid.box-primary>.box-header h3, .box.box-primary>.box-header h3 {color: #FFFFFF; font-size: 24px}
                    
                    #close {background-color: #FFFFFF; border-color: #FFFFFF}
                    #pred_tweet1 {font-size: 32px}
                    #begin {backround-color: #1DA1F2}
                    #expand {background-color: #243447; border-color: #243447; color: #243447; font-size: 0px}
                    #retract {background-color: #243447; border-color: #243447; color: #243447; font-size: 0px}
                    #dir {background: #1DA1F2; color: white; border-color: #1DA1F2}
                    #dir:hover {background-color: white; color: #1DA1F2; border-color: white}
                    #downloadData {background: #1DA1F2; color: white; border-color: #1DA1F2}
                    #downloadData:hover {background-color: white; color: #1DA1F2; border-color: white}
                    #removeData {background: #1DA1F2; color: white; border-color: #1DA1F2}
                    #removeData:hover {background-color: white; color: #1DA1F2; border-color: white}
                    

                    "
                    
                  ))),
                  
                  
                  # TabItems containing many tabItem to fill in every element of
                  # sidebar menu
                  tabItems(
                    
                    
                    
################### Home Page ##################################################
                    
                    tabItem(
                      
                      align = "left",
                      tabName = "home",
                      
                      # IntroBox for interactive introduction guide
                      introBox(
                        
                        data.step = 25,
                        data.intro = HTML("And that concludes the tutorial on how to use this application! Thank you for following this
                        tutorial until the end of the session. I hope that this tutorial helps you understand better about how this
                        application works. Enjoy!
                        <br/><br/>
                        P.S. here is a nyat cat for you!
                        <br/><br/>
                        <img src='https://c.tenor.com/xzjlrhYq_lQAAAAj/cat-nyan-cat.gif' style='width: 75%; height: 75%; display: block; margin-left: auto; margin-right: auto'/>"),
                        
                        # Flexible row grid
                        fluidRow(
                          
                          width = 12,
                      
                          # Title text of the home page
                          h1(align = "center", HTML("<span style='color: white'><b>FOR EVERY HOUR PASSED IN INDONESIA, 3 PEOPLE DIED IN A ROAD ACCIDENT!</b></span>")),
                          
                          br(),
                          br(),
                          br(),
                          
                          # Box containing youtube embeded video
                          box(
    
                            width = 8,
                            align = "left",
                            background = "aqua",
                            height = "400",
            
                            # Youtube embeded video
                            uiOutput("home_video")
                            
                          ),
                          
                          # Information box
                          valueBox("61%", "Human Error", icon("user-cog"), "red", width = 4),
                          valueBox("9%", "Poorly Maintained Vehicle", icon("shuttle-van"), "yellow", width = 4),
                          valueBox("30%", "Road Quality And Environment", icon("road"), "green", width = 4),
                          
                          
                          # Box containing line chart 
                          box(
    
                            width = 12,
                            background ="aqua",
    
                            # Line chart
                            withSpinner(uiOutput("sensus"), type = 1, size = 1, color = "#1DA1F2")
    
                          )
                          
                        )
                        
                      )
                      
                    ),
                    
                    
                    
################### Record Page ################################################

                    tabItem(
                      
                      width = 12,
                      tabName = "record",
                      
                      # IntroBox for interactive introduction guide
                      introBox(
                        
                        data.step = 10,
                        data.intro = "In this page, the data are being captured and stored whenever 
                        there are a tweet about an accident found by the system",
                      
                        # Flexible row grid
                        fluidRow(
                          
                          width = 12,
                        
                          
                          # Box containing Accident Record info
                          box(
                            
                            width = 12,
                            title = "Accident record",
                            status = "primary",
                            solidHeader = T,
                            
                            # Flexible row grid
                            fluidRow(
                              
                              column(
                                
                                width = 3,
                                align = "center",
                                
                                # IntroBox for interactive introduction guide
                                introBox(
                                  data.step = 10,
                                  data.intro = "When the program starts, this logo will change to live
                                  as a way to indicate that the program is currently going live in this page",
                                  
                                  # Accident Record interactive picture
                                  uiOutput("record_picture")
                                )
                                
                              ),
                              
                              # Accident Record text info
                              column(width = 9, align = "left", uiOutput("record_text"))
                              
                            )
                            
                          ),
                          
                          # Flexible row grid
                          fluidRow(
                            
                            width = 12,
                            
                            column(
                              
                              width = 12,
                              
                              # Box containing console screen
                              box(
                                
                                id = "console_box",
                                width = 12,
                                title = HTML("<span style='color: white'>Console</span>"),
                                solidHeader = T,
                                background = "aqua",
                                collapsible = T,
                                collapsed = T,
                                
                                # IntroBox for interactive introduction guide
                                introBox(
                                  
                                  data.step = 11,
                                  data.intro = "The information about how the system is running on the
                                  background can be find in this simulated console box",
                                  
                                  # Console screen to preview how the program
                                  # works in the background
                                  verbatimTextOutput("console")
                                  
                                )
                              ),
                              
                              # Custom CSS for console box
                              tags$head(tags$style(HTML("#console {color: white; 
                                                        background-color: black; 
                                                        height: 200px; overflow: auto;
                                                        display: flex; flex-direction: column-reverse}
                                                        .btn.btn-box-tool {color: white}")))
                            
                            )
                            
                          ),
                          
                          # Flexible row grid
                          fluidRow(
                            
                            width = 12,
                            
                            column(
                              
                              width = 12,
                              
                              # Box containing 
                              box(
                                
                                width = 10,
                                align = "left",
                                background = "aqua",
                                
                                # IntroBox for interactive introduction guide
                                introBox(
                                  
                                  data.step = 12,
                                  data.intro = "By pressing this button, the program will automatically request the most recent tweet from Twitter API for every 10 seconds until the button is pressed again",
                                  
                                  # Button for startting and stoping the program
                                  actionBttn("loopBtn", "Start/Stop", div(icon("play"), icon("pause")), "fill", "primary", block = T),
                                  
                                  # Custom CSS for the Start/Stop button
                                  tags$head(tags$style(HTML(".bttn-fill.bttn-primary {background: #1DA1F2; color: #fff;}")))
                                  
                                )
                                
                              ),
                              
                              # Box containing virtual LED as the start and stop
                              # button indicator
                              box(
                                
                                width = 2,
                                align = "center",
                                background = "aqua",
                                
                                # IntroBox for interactive introduction guide
                                introBox(
                                  
                                  data.step = 13,
                                  data.position = "left",
                                  data.intro = "When the button is pressed, the simulated LED will turn green which indicates that the program is currently running.
                                When we press the button again. the simulated LED indicator will turn red and the program will be terminated",
                                  
                                  # Virtual LED indicator
                                  uiOutput("led_indicator_green_2"),
                                  uiOutput("led_indicator_red_2")
                                  
                                )
                                
                              )
                              
                            )
                            
                          ),
                          
                          column(
                            
                            width = 4,
                            
                            column(
                              
                              width = 12,
                          
                              # IntroBox for interactive introduction guide
                              introBox(
                                data.step = 17,
                                data.intro = "When an accident is found, the counter will automatically add the current existing 
                                number with the newly reported number",
  
                                # Flexible row grid
                                fluidRow(
                                  width = 12,
                                  
                                  # Accident count information
                                  valueBox(
                                    width = 12,
                                    subtitle = "Accident Count",
                                    value = withSpinner(uiOutput("accident_count"), type = 1, size = 1, color = "#1DA1F2"),
                                    icon = icon("sort-numeric-up-alt"),
                                    color = "red"
                                  )
                                  
                                )
                                
                              )
                              
                            ),
                            
                            box(
                              
                              width = 12,
                              background = "aqua",
                              
                              # IntroBox for interactive introduction guide
                              introBox(
                                
                                data.step = 14,
                                data.intro = "These parameter inputs will be used to setup the counter where it will be used as a 
                                count down starting from a certain amount number that are provided. Once the number reach 0, the 
                                counter along with the dataframe will be removed to create a new one. It is very important to setup 
                                this counter before running the program",
                                
                                # Input time unit and number
                                uiOutput("time_unit"),
                                uiOutput("time_select")
                                
                              ),
                              
                              # IntroBox for interactive introduction guide
                              introBox(
                                
                                data.step = 15,
                                data.intro = "As a way to simulate how the data will be saved in the database, a folder directory will 
                                be needed to  store the recorded data locally. The targeted directory will the be used to create a set 
                                of new folder to store the data. The program will not be able to run without it",
                                p(HTML("<span style='color: white'><b>Select a folder path to store the recorded data</b></span>")),
                                
                                # Input directory to save the recorded accident
                                # table
                                verbatimTextOutput("dir_text"),
                                uiOutput("dir_input")
                              ),
                              
                              br(),
                              
                              column(
                                
                                width = 12, 
                                
                                # IntroBox for interactive introduction guide
                                introBox(
                                  
                                  data.step = 16,
                                  data.intro = "As a preventive measure from accidentally changing the parameters while the program is running,
                                  the user will have to click the submit button before the parameters is received by the program. Be sure to 
                                  double check before submiting the parameters",
                                  
                                  # Submit button
                                  actionBttn("submitBtn", "Submit", style = "fill", color = "primary", block = T, size = "sm"),
                                  tags$head(tags$style(HTML(".bttn-fill.bttn-primary {background: #1DA1F2; color: #fff;}")))
                                  
                                )
                                
                              )
                              
                            ),
                            
                            # Download button
                            column(
                              width = 12,
                              uiOutput("Download")
                            ),
                            
                            column(width = 12, br()),
                            
                            # Button to delete recorded files
                            column(
                              width = 12,
                              uiOutput("remove")
                            )
                            
                          ),
                          
                          column(
                            
                            
                            width = 8,
                            
                            box(
                              
                              width = 12,
                              background = "aqua",
                              
                              # IntroBox for interactive introduction guide
                              introBox(
                                
                                data.step = 18,
                                data.intro = "Simultaneously along with the accident counter, the dataframe will be automatically updated when an accident or accidents are found",
                                
                                # Accident record table
                                withSpinner(dataTableOutput("table_record"), type = 1, size = 1, color = "#1DA1F2")
                                
                              )
                              
                            )
                              
                          )
                          
                        )
                      
                      )
                      
                    ),



################### Detect Accident Page #######################################

                    tabItem(
                      
                      align = "left",
                      tabName = "detect_accident",
                      
                      # IntroBox for interactive introduction guide
                      introBox(
                        
                        data.step = 6,
                        data.position = "left",
                        data.intro = "In this page, you can gain information about an accident report from Twitter. 
                                            By utilizing a Supervised Macine Learning model, the tweeted text is Automatically catagorized 
                                            as an accident or not an accident",
                        
                        # Flexible row grid
                        fluidRow(
                          
                          column(
                            
                            width = 12,
                            aligh = "center",
                            
                            # Box containing Accident Information introduction
                            # text
                            box(
                              
                              width = 12,
                              align = "left",
                              title = "Detecting Accident From Twitter",
                              status = "primary",
                              solidHeader = T,
                              
                              column(
                                
                                width = 3,
                                align = "center",
                                
                                column(width = 12, p(HTML("<br/>"))),
                                column(width = 12, p(HTML("<br/>"))),
                                column(width = 12, p(HTML("<br/>"))),
                                column(width = 12, p(HTML("<br/>"))),
                                column(width = 12, uiOutput("detect_accident_picture"))
                                
                              ),
                              
                              column(width = 9, align = "left", uiOutput("detect_accident_text"))
                              
                            )
                            
                          )
                          
                        ),
                        
                        # IntroBox for interactive introduction guide
                        introBox(
                          
                          data.step = 7,
                          data.intro = "The information regarding the tweeted text 
                          is displayed here. Although the tweet is being refreshed 
                          every 10 seconds, the information will only be updated 
                          when the newest tweet is found",
                          
                          # Flexible row grid
                          fluidRow(
                            
                            width = 12,
                            
                            column (
                              
                              width = 12,
                              
                              # Tweeted text prediction and information
                              box(width = 4,
                                  status = "primary",
                                  solidHeader = T,
                                  title = uiOutput("pred_tweet1"),
                                  uiOutput("extra_info1")
                              ),
                              box(width = 4,
                                  status = "primary",
                                  solidHeader = T,
                                  title = uiOutput("pred_tweet2"),
                                  uiOutput("extra_info2")
                              ),
                              box(width = 4,
                                  status = "primary",
                                  solidHeader = T,
                                  title = uiOutput("pred_tweet3"),
                                  uiOutput("extra_info3")
                              )
                              
                            )
                            
                          )
                          
                        ),
                        
                        # IntroBox for interactive introduction guide
                        introBox(
                          
                          data.step = 8,
                          data.intro = "In here we will be able to see the actual 
                          tweet that are embed to this application",
                          
                          # Flexible row grid
                          fluidRow(
                            
                            width = 12,
                            
                            # Embeded most recent twitter post
                            column(
                              width = 4,
                              align = "center",
                              withSpinner(uiOutput("tweet1"), type = 1, size = 1, color = "#1DA1F2")
                            ),
                            column(
                              width = 4,
                              align = "center",
                              withSpinner(uiOutput("tweet2"), type = 1, size = 1, color = "#1DA1F2")
                            ),
                            column(
                              width = 4,
                              align = "center",
                              withSpinner(uiOutput("tweet3"), type = 1, size = 1, color = "#1DA1F2")
                            )
                            
                          )
                          
                        )
                        
                      )
                      
                    ),
                    
                    

################### About Application Page #####################################
                    
                    tabItem(
                      
                      align = "left",
                      tabName = "about_app",
                      
                      column(width = 2),
                      
                      # Flexible row grid
                      fluidRow(
                        
                        column(
                          
                          width = 12,
                          aligh = "left",
                          
                          # Box containing About This Application
                          box(
                            
                            width = 12,
                            align = "left",
                            title = "About This Application",
                            status = "primary",
                            solidHeader = T,
                            
                            # Flexible row grid
                            fluidRow(
                              column(width = 12, align = "center", uiOutput("aboutApp_picture")),
                              column(width = 12, br()),
                              column(width = 12, align = "left", uiOutput("aboutApp_text")),
                              column(width = 12, br()),
                              column(
                                width = 12, 
                                align = "right", 
                                tags$a(href="https://rpubs.com/MBagusDP/Early_Detection_of_Accident_From_Twitter", HTML("<span style = 'font-size: 16px'>Learn More</span>"))
                              )
                            )
                            
                          )
                          
                        )
                        
                      )
                      
                    ),
                    
                    

################### Natural Language Processing Page ###########################
                    
                    tabItem(
                      
                      align = "left",
                      tabName = "nlp",
                      
                      # Box containing NLP information
                      box(
                        
                        width = 12,
                        title = "What is Natural Language Processing?",
                        status = "primary",
                        solidHeader = T,
                        
                        # Flexible row grid
                        fluidRow(
                          
                          column(
                            
                            width = 3,
                            align = "center",
                            
                            # Flexible row grid
                            fluidRow(
                              column(width = 12, p(HTML("<br/>"))),
                              column(width = 12, uiOutput("nlp_picture"))
                            )
                            
                          ),
                          
                          column(width = 9, align = "left", uiOutput("nlp_text")),
                          
                          column(
                            width = 12, 
                            align = "right", 
                            tags$a(href="https://www.ibm.com/cloud/learn/natural-language-processing", HTML("<span style = 'font-size: 16px'>Learn More</span>"))
                          )
                          
                        )
                        
                      ),
                      
                      column(width = 1),
                      
                      # Box containing embeded NLP youtube video
                      box(
                        
                        width = 10,
                        align = "center",
                        background = "aqua",
                        height = "500",
                        uiOutput("nlp_video")
                        
                      ),
                      
                      column(width = 1)
                      
                    ),
                    
                    

################### Architect Page #############################################
                    
                    tabItem(
                      
                      align = "left",
                      tabName = "architect",
                      
                      # IntroBox for interactive introduction guide
                      introBox(
                        
                        data.step = 21,
                        data.intro = "In this page, you can find information about how this application works",
                        
                        # Flexible row grid
                        fluidRow(
                          
                          width = 12,

                          # Box containing program architecture information
                          box(
                            
                            width = 12,
                            align = "left",
                            title = "What is Program Architecture?",
                            status = "primary",
                            solidHeader = T,
                            
                            # Flexible row grid
                            fluidRow(
                              
                              column(
                                
                                width = 3,
                                align = "center",
                                
                                # Flexible row grid
                                fluidRow(
                                  column(width = 12, uiOutput("architect_picture"))
                                )
                                
                              ),
                              
                              column(width = 9, align = "left", uiOutput("architect_text"))
                              
                            )
                            
                          ),
                          
                          # Box containing maginifer glasses funtion
                          box(
                            
                            width = 10,
                            align = "center",
                            background = "aqua",
                            
                            # IntroBox for interactive introduction guide
                            introBox(
                              
                              data.step = 23,
                              data.intro = "Due to the small size of each element and text in the flowchart diagram, a method to zoom in and out using
                              a simulated magnifier glass is available by pressing this button",
                            
                              # Button to switch the magnifier glasses function on and off 
                              actionBttn("magnifierBtn", "Magnifying Glass", icon("search-plus"), "fill", block = T)
                              
                            )
                            
                          ),
                          
                          # Box containing LED indicator for magnifier glasses
                          # button
                          box(
                            
                            width = 2,
                            align = "center",
                            background = "aqua",
                            
                            # IntroBox for interactive introduction guide
                            introBox(
                              
                              data.step = 24,
                              data.position = "left",
                              data.intro = "Simulated LED light is also provided in this page to let us know whether the magnifier glass function is 
                              activated or not",

                              # Virtual LED indicator
                              uiOutput("led_indicator_green"),
                              uiOutput("led_indicator_red")
                              
                            )
                            
                          ),
                          
                          # Box containing flowchart of the program
                          box(
                            width = 12,
                            background = "aqua",
                            
                            # IntroBox for interactive introduction guide
                            introBox(
                              
                              data.step = 22,
                              data.intro = "The flowchart explains how the program works starting from the left most of the diagram
                              to the right by following the arrow lines that connects each elements inside the flowchart diagram",
                              
                              uiOutput("flowchart")
                              
                            )
                          )
                          
                        )
                        
                      )
                      
                    ),
                    
                    

################### Profile Page ###############################################
                    
                    tabItem(
                      
                      width = 12,
                      tabName = "profile",
                      
                      box(
                        title = "About me",
                        width = 4,
                        status = "primary",
                        solidHeader = T,
                        uiOutput("photo"),
                        uiOutput("profile_text")
                      ),
                      
                      box(
                        title = "My Social Media",
                        width = 8,
                        align = "center",
                        status = "primary",
                        solidHeader = T,
                        
                        column(width = 2),
                        
                        column(width = 8, 
                               uiOutput("shiny_dashboard"),
                               uiOutput("desc_shiny"),
                               br(),
                               uiOutput("rpubs"),
                               uiOutput("desc_rpubs"),
                               br(),
                               uiOutput("github"),
                               uiOutput("desc_github"),
                               br(),
                               br(),
                               uiOutput("linkedin"),
                               br(),
                               uiOutput("desc_linkedin")
                        )
                        
                      )
                      
                    )
                    
                  )
                  
    )
    
  )
  
  
)
