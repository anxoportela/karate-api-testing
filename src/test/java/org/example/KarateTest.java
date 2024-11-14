package org.example;

import com.intuit.karate.junit5.Karate;

public class KarateTest {

    /**
     * Este método ejecuta ambos archivos .feature en una única ejecución de prueba
     * y genera un solo reporte con los resultados de ambas características.
     */
    @Karate.Test
    Karate testAllApi() {
        // Se especifican ambos archivos *.feature que se desean ejecutar
        return Karate.run("src/test/resources/api-test.feature",
                        "src/test/resources/api-auth-test.feature").reportDir("report");
    }
}
