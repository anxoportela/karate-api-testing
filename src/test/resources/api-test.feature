Feature: Crear un nuevo usuario

  Scenario: Crear un usuario con solicitud POST
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request { name: 'Juan Pérez', email: 'juan@example.com', phone: '123-456-7890' }
    When method post
    Then status 201
    And match response.name == 'Juan Pérez'
    And match response.email == 'juan@example.com'