### **📋 Kata con Validaciones Avanzadas: Validar una Lista Completa**

#### 📑 Instrucciones

1. **Objetivo**: Valida el contenido de una lista de usuarios.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users`
3. **Pasos**:
   - Realiza una solicitud **GET** a la URL indicada.
   - Valida que los tres primeros usuarios tengan los siguientes valores:
      - `name` del primer usuario: `"Leanne Graham"`
      - `name` del segundo usuario: `"Ervin Howell"`
      - `name` del tercer usuario: `"Clementine Bauch"`

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Validación de una lista de usuarios

  Scenario: Validar los tres primeros usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].name == 'Leanne Graham'
    And match response[1].name == 'Ervin Howell'
    And match response[2].name == 'Clementine Bauch'
```

</details>