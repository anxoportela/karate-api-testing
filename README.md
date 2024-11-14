### **✍️ Kata Básico con Parámetros: Solicitud POST**

#### 📑 Instrucciones

1. **Objetivo**: Crea un nuevo usuario mediante una solicitud **POST**.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users`
3. **Datos de Entrada**:
   - `name`: `"Juan Pérez"`
   - `email`: `"juan@example.com"`
   - `phone`: `"123-456-7890"`
4. **Pasos**:
   - Realiza una solicitud **POST** con los parámetros indicados.
   - Valida que la respuesta contenga los valores de `name`, `email` y `phone` que enviaste.

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Crear un nuevo usuario

  Scenario: Crear un usuario con solicitud POST
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request { name: 'Juan Pérez', email: 'juan@example.com', phone: '123-456-7890' }
    When method post
    Then status 201
    And match response.name == 'Juan Pérez'
    And match response.email == 'juan@example.com'
```

</details>