### **🧩 Kata con Validación de Estructura de JSON: Validar Respuesta Completa**

#### 📑 Instrucciones

1. **Objetivo**: Valida la estructura de la respuesta JSON.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users/1`
3. **Pasos**:
    - Realiza una solicitud **GET** a la URL indicada.
    - Verifica que la respuesta contenga los campos `id`, `name`, `email`, y que el objeto `address` tenga un campo `city`.

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Validación de la estructura de la respuesta

  Scenario: Validar la estructura de la respuesta JSON
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And match response.id == '#integer'
    And match response.name == '#string'
    And match response.email == '#string'
    And match response.address == '#object'
    And match response.address.city == '#string'
```

</details>