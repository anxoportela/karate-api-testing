### **💡 Kata con Validación de Cuerpo Completo de JSON: Validar Todo el Cuerpo de la Respuesta**

#### 📑 Instrucciones

1. **Objetivo**: Verifica la respuesta completa de una API.
2. **Endpoint**: `https://jsonplaceholder.typicode.com/users/1`
3. **Pasos**:
   - Realiza una solicitud **GET** a la URL indicada.
   - Valida todo el cuerpo de la respuesta, incluyendo los campos `id`, `name`, `email`, y `address`.

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Validar cuerpo completo de la respuesta

  Scenario: Validar todo el cuerpo de la respuesta JSON
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And match response == {id: 1, name: 'Leanne Graham', email: 'Sincere@april.biz', address: {street: 'Kulas Light', suite: 'Apt. 556', city: 'Gwenborough', zipcode: '92998-3874', geo: {lat: '-37.3159', lng: '81.1496'}}, username: 'Bret', phone: '1-770-736-8031 x56442', website: 'hildegard.org', company: {name: 'Romaguera-Crona', catchPhrase: 'Multi-layered client-server neural-net', bs: 'harness real-time e-markets'}}
    
```

</details>