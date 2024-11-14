Feature: Validación dinámica de respuesta

  Scenario: Validar contenido dinámico de la respuesta
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].name != ''
    And assert response.length > 5