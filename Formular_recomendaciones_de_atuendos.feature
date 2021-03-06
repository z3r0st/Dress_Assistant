 Feature: Formular recomendaciones de atuendos
    
   Incluye la US: US10
   Comprende la visualizacion de recomendaciones de atuendos
    
   Scenario: Visualizar recomendaciones al iniciar la aplicación
   Given el usuario ha iniciado sesión con una cuenta
   When el usuario abre la aplicación
   Then se muestra la interfaz de recomendaciones (como ventana)
   And se muestra una fila de atuendos recomendados con las prendas del armario
   And una fila de atuendos recomendados incluyendo prendas que el usuario no posee.

   Scenario: Visualizar recomendaciones desde el menú
   Given el usuario se encuentra en el menú principal
   When el usuario selecciona la opción “Recomendaciones”
   Then la IA elabora recomendaciones de atuendos, teniendo en cuenta el perfil del usuario y la configuración de recomendaciones
   And se presenta una nueva interfaz con una primera fila de 3 atuendos con ropa exclusivamente del armario
   And una segunda fila, con 3 atuendos elaborados tanto con prendas del armario como con prendas de la base de datos que el usuario no posee.

   Scenario: Refrescar recomendaciones
   Given el usuario se encuentra en la interfaz de recomendaciones
   When el usuario selecciona el botón de refrescar
   Then el sistema comunica la petición junto con la especificación de las prendas pertenecientes a los atuendos recomendados
   And la IA genera nuevas recomendaciones de atuendos compuestos por prendas distintas a las de las recomendaciones previas.

   Scenario: Redireccionar a tienda de una prenda recomendada
   Given el usuario se encuentra en la interfaz de recomendaciones
   And el usuario ha seleccionado un atuendo 
   When el usuario selecciona una prenda registrada en la base de datos
   And el usuario selecciona la opción “Comprar”
   Then se le redirecciona a la página web donde puede comprar la prenda, mediante el uso de un enlace de afiliado.
