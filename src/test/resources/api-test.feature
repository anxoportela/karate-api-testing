Feature: Verificar respuesta de estado de la API

  Scenario: Obtener lista de usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200