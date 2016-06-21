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

# The code below defines the UI for the my_shiny_app
shinyUI(navbarPage(h1("Hello Buddy!"),

        tabPanel(h2("Instructions"), h3(textOutput("Instructions"))),

        tabPanel(h2("User Inputs"),
                # The below input takes the value of power. Default value is 2. Range in s -3 to 3 (only integers)
                numericInput("Power", h2("Value of Power"), 2, min=-3, max = 3),
                # The below input takes the value of x for which the result x^power is to be found
                # The range is restricted to -100 to 100 (only integers) with default value as 10.
                numericInput("XVal", h2("Value of X"), 10, min = -100, max=100)
        ),

        tabPanel(h2("Output"),
                # This is the result of x^power
                h3(textOutput("text1")),
                # This is just the title for the graph
                h3(textOutput("text2")),
                # This is the graph of the power function
                plotOutput("plot1")
        )
))
