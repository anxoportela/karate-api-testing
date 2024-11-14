## Kata 1: Verificar el Estado de una API REST (Nivel Principiante)

**Nivel**: Principiante  
**Descripción**: Verifica que una API REST esté activa y responda con el estado adecuado.

### 📝 Instrucciones

1. **Objetivo**: Realiza una solicitud GET para verificar el estado de una API REST.
2. **Pasos**:
   - Realiza una solicitud GET al endpoint proporcionado.
   - Asegúrate de que el código de estado devuelto sea 200.

3. **Requisitos de validación**:
   - La API debe responder con el estado `200`.

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
