Feature: Validación de una lista de usuarios

  Scenario: Validar los tres primeros usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].name == 'Leanne Graham'
    And match response[1].name == 'Ervin Howell'
    And match response[2].name == 'Clementine Bauch'