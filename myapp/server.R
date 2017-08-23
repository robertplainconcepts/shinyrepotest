
shinyServer(function(input, output) {
  output$prediccionVentas <- renderDataTable({
      Table %>%
        datatable(rownames = FALSE, options = list(columnDefs = list(list(className = 'dt-center', targets = 0:3))))
  })
})



