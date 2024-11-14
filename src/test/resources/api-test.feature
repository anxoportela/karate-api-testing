Feature: Validar contenido de la respuesta JSON

  Scenario: Obtener lista de usuarios y validar el primer usuario
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].id == 1
    And match response[0].name == 'Leanne Graham'