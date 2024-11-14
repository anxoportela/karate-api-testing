### **🔐 Kata de Autenticación Básica: Solicitud con Auth**

#### 📑 Instrucciones

1. **Objetivo**: Realiza una solicitud **GET** a un endpoint protegido que requiere autenticación básica.
2. **Endpoint**: `https://httpbin.org/basic-auth/admin/password`
3. **Credenciales**:
   - **Usuario**: `admin`
   - **Contraseña**: `password`
4. **Pasos**:
   - Realiza una solicitud **GET** con autenticación básica utilizando las credenciales proporcionadas.
   - Valida que la respuesta contenga el campo `user` con el valor `admin`.

#### 📥 Respuesta

<details>
  <summary>Haz clic aquí para ver la respuesta</summary>

```gherkin
Feature: Solicitud con autenticación básica

  Scenario: Acceder a la API con autenticación básica
    Given url 'https://httpbin.org/basic-auth/admin/password'
    And header Authorization = 'Basic YWRtaW46cGFzc3dvcmQ='
    When method get
    Then status 200
    And match response.user == 'admin'
```

</details>