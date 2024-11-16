<!-- markdownlint-disable -->
### **⚠️ Kata Avanzado con Error Handling: Manejar Respuestas de Error**

#### 📑 Instrucciones

1. **Objetivo**: Realiza una solicitud a un endpoint no disponible y valida que el código de estado sea **404**.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/unknown`
3. **Pasos**:
   - Realiza una solicitud **GET** a un endpoint inexistente.
   - Valida que el código de estado de la respuesta sea **404**.

### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Manejo de respuestas de error

  Scenario: Solicitud a un endpoint inexistente
    Given url 'https://jsonplaceholder.typicode.com/unknown'
    When method get
    Then status 404
```

</details>
