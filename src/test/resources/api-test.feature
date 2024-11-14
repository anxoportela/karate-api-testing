Feature: Solicitud con autenticación básica

  Scenario: Acceder a la API con autenticación básica
    Given url 'https://httpbin.org/basic-auth/admin/password'
    And header Authorization = 'Basic YWRtaW46cGFzc3dvcmQ='
    When method get
    Then status 200
    And match response.user == 'admin'