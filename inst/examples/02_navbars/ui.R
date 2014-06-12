shinyUI(
  gwfluidPage(
    gwNavBar("Ipad Menu",
             gwNavButton("Nav Item 1")
             ,gwMenuBar("Nav Menu 1", id = 't'
                        , gwNavButton("Menu Item 1", class = "small")
                        , gwMenuBar("Sub Menu 1"
                                    , gwNavButton("Sub Menu Item 1")
                                    , gwNavButton("Sub Menu Item 2")
                        )
             )
             , gwNavButton("Nav Item 3")
             , gridBreakpoint = "nocollapse"
             , class = "orange"
    )
    , gwNavButton("Menu Item 1", class = "small red")
    , gwNavButton("Menu Item 1", class = "success")
    , gwNavButton("Menu Item 1", class = "question round")
  )
)