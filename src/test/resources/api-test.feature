Feature: Prueba de API de ejemplo

  Scenario: Obtener lista de usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].id == 1
    And match response[0].name == 'Leanne Graham'