Feature: Manejo de respuestas de error

  Scenario: Solicitud a un endpoint inexistente
    Given url 'https://jsonplaceholder.typicode.com/unknown'
    When method get
    Then status 404