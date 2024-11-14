Feature: Prueba de API con autenticación básica usando httpbin

  Scenario: Acceder a un endpoint con autenticación básica
    Given url 'https://httpbin.org/basic-auth/user/passwd'
    And header Authorization = 'Basic dXNlcjpwYXNzd2Q='
    When method get
    Then status 200
    And match response.authenticated == true
    And match response.user == 'user'
