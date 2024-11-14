### **🌍 Kata Completa de API: Verificar Todos los Endpoints de Usuarios**

#### 📑 Instrucciones

1. **Objetivo**: Realiza solicitudes a dos endpoints de usuarios y valida que los usuarios sean correctos.
2. **Endpoints**:
   - `GET /users`: Obtén todos los usuarios.
   - `GET /users/{id}`: Obtén un usuario específico.
3. **Pasos**:
   - Realiza una solicitud **GET** a ambos endpoints.
   - Verifica que la respuesta contenga usuarios y que el primer usuario tenga los valores correctos.

### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Verificar todos los endpoints de usuarios

  Scenario: Verificar la lista de usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200
    And match response.size() > 0

  Scenario: Verificar un usuario específico
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'
    And match response.email == 'Sincere@april.biz'
```

</details>