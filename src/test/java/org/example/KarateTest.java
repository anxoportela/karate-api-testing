package org.example;

import com.intuit.karate.junit5.Karate;

public class KarateTest {

    @Karate.Test
    Karate testAllApi() {
        return Karate.run("classpath:api-test.feature").reportDir("target/karate-report");
    }
}
