### **🔍 Kata Intermedio: Validar el Contenido de una Respuesta JSON**

#### 📑 Instrucciones

1. **Objetivo**: Valida que la respuesta JSON contenga la información correcta.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users`
3. **Pasos**:
   - Realiza una solicitud **GET** a la URL indicada.
   - Valida que el primer usuario de la respuesta tenga el `id` igual a `1` y el `name` igual a `"Leanne Graham"`.

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Validar contenido de la respuesta JSON

  Scenario: Obtener lista de usuarios y validar el primer usuario
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response[0].id == 1
    And match response[0].name == 'Leanne Graham'
```

</details>