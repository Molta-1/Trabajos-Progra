#9-InterfazR
n1 <- as.numeric(readline(prompt = "Ingrese el número límite: "))
contador <- 1

listaN <- list()

repeat{
  print(contador)
  
  if (contador==n1){
    print(listaN)
    break
  }
  listaN[contador] <- contador 
  contador <- contador + 1
}

install.packages("shiny")
library(shiny)

ui <- fluidPage(
  
  # Título
  titlePanel("Ingreso de Palabras"),

  sidebarLayout(
    
    sidebarPanel(
      
      textInput(inputId = "palabra_actual",
                label = "Ingresa una palabra:",
                value = "",
                placeholder = "Escribe aquí..."),
      
      actionButton(inputId = "agregar_btn",
                   label = " Agregar",
                   class = "btn-success"),
      
      br(), br(),
      
      actionButton(inputId = "limpiar_btn",
                   label = "Limpiar Lista",
                   class = "btn-warning")
    ),
    
    mainPanel(
      h3("Lista de Palabras Ingresadas (en Mayúsculas):"),
      verbatimTextOutput("lista_actualizada")
    )
  )
)


server <- function(input, output, session) {
  
  palabras_guardadas <- reactiveVal(c())
  lectura_finalizada <- reactiveVal(FALSE)
  

  observeEvent(input$agregar_btn, {
    
    nueva_palabra <- toupper(input$palabra_actual)
    
    if (nueva_palabra == "FIN") {
      
      lectura_finalizada(TRUE)
      disable("palabra_actual")
      disable("agregar_btn")
      updateTextInput(session, "palabra_actual", value = "--- LECTURA FINALIZADA ---")
      
      return()
      
    } else if (nchar(nueva_palabra) > 0 && !lectura_finalizada()) {
      
      palabras_guardadas(c(palabras_guardadas(), nueva_palabra))
      
      updateTextInput(session, "palabra_actual", value = "")
    }
  })
  
  observeEvent(input$limpiar_btn, {
    
    palabras_guardadas(c())
  })
  
  
  output$lista_actualizada <- renderPrint({
    
    if (length(palabras_guardadas()) == 0) {
      "La lista está vacía. ¡Ingresa tu primera palabra!"
    } else {
      palabras_guardadas()
    }
  })
}

shinyApp(ui = ui, server = server)