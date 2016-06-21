# ===================================================================================
# my_shiny_app
# ===================================================================================
# ===================================================================================
# Filename: ui.R
# Author: Sachin Garg
# Date: 20-June-2016
# Version: 0.1
# ===================================================================================
# About this application
# ===================================================================================
# This application helps find the exponential value of a variable
# The power ranges are limited to the range of -3 to 3 (integer values, both inclusive)
# The user is asked to choose a power and the value of the variable x for which it
# finds the value x^power. The values of x are limited to -100 to 100 (integer values)
# Along with this, it also plots a graph for the exponential function for the chosen
# power value.
# ===================================================================================

library(shiny)

shinyServer(function(input, output) {

        output$Instructions <- renderText({paste("This application helps find the exponential value of a variable.
                                                The value for power is limited to the range of -3 to 3 (integer values,
                                                both inclusive).
                                                The user is asked to choose a power and the value of the variable x for
                                                which the application finds the value x^power under the \"Output\" tab.
                                                The values of x are limited to -100 to 100 (integer values).
                                                Along with this, the application also plots a graph for the exponential
                                                function for the chosen power value.")})


        # This prints the result of x^power
        output$text1 <- reactive({
                output$text1 <- renderText({paste("The Result is: ", input$XVal^(input$Power))})
        })

        # This is used to print the header for the graph
        output$text2 <- reactive({
                output$text2 <- renderText({paste("The graph for the power function with \"POWER = ", input$Power, "\" is shown below")})
        })

        # This is used to print the graph for the power function
        output$plot1 <- renderPlot({
                x <- input$XVal
                z <- input$Power
                curve(x^z, from=-100, to = 100, n = 201, xname="x", xlab = "x", ylab="y")
        })
})
