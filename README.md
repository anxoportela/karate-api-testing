### **🔄 Kata con Datos Dinámicos: Validar Contenido de Respuesta con Datos Variables**

#### 📑 Instrucciones

1. **Objetivo**: Valida el contenido dinámico de la respuesta.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users`
3. **Pasos**:
   - Realiza una solicitud **GET** a la URL indicada.
   - Valida que el **nombre del primer usuario** no esté vacío.
   - Valida que el **número total de usuarios** sea mayor a 5.

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Validación dinámica de respuesta

  Scenario: Validar contenido dinámico de la respuesta
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].name != ''
    And assert response.length > 5
```

</details>