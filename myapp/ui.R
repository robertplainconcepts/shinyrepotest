
shinyUI(fluidPage(

    tags$style(type="text/css",
         ".shiny-output-error { visibility: hidden; }",
         ".shiny-output-error:before { visibility: hidden; }"
    ),

    titlePanel("Stocks forecasting"),

    sidebarLayout(
        sidebarPanel (
            #tags$head(tags$style(type="text/css", ".well { max-width: 280px; }")),
                selectizeInput("promotion_selection",
                               "Promotion type",
                               choices = c('')),
                textInput("productid_selection",
                          "Product ID"),
                textInput("price_selection",
                          "Price without discount (€)"),
                selectizeInput("benefit_selection",
                               "Benefit",
                               choices = c(''),
                               selected = NULL),
                textInput("duration_selection",
                          "Duration of the promotion (days)"),
                textInput("maxunits_selection",
                          "Max number of units (coupons only)"),
                textInput("products_selection",
                          "Number of promoted products for this promotion"),
                textInput("customers_selection",
                          "Customers (segmented coupons only)") #com fem lo dels customers "manuals" per dividir-los per tenda??
        ),

        mainPanel(
                dataTableOutput('prediccionVentas')
        )
    )
))
