Feature: Verificar todos los endpoints de usuarios

  Scenario: Verificar la lista de usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And assert response.length > 0

  Scenario: Verificar un usuario específico
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'
    And match response.email == 'Sincere@april.biz'