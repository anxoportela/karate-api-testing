## **🏁 Kata Básico: Verificar el Estado de una API REST (Nivel Principiante)**

### 📑 Instrucciones

1. **Objetivo**: Verifica que la API esté activa y responda correctamente.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users`
3. **Pasos**:
   - Realiza una solicitud **GET** a la URL indicada.
   - Valida que el código de estado de la respuesta sea **200**, lo que indica que la API está funcionando correctamente.

### 📥 Respuesta

<details>
<summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Verificar respuesta de estado de la API

  Scenario: Obtener lista de usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
```

</details>
