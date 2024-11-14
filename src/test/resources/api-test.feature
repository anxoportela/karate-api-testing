Feature: Validación de la estructura de la respuesta

  Scenario: Validar la estructura de la respuesta JSON
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And match response.id == '#number'
    And match response.name == '#string'
    And match response.email == '#string'
    And match response.address == '#object'
    And match response.address.city == '#string'