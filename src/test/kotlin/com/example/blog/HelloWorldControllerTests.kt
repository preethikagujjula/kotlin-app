package com.example.blog

import io.kotlintest.shouldBe
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.boot.test.web.client.TestRestTemplate
import org.springframework.boot.test.web.client.getForEntity
import org.springframework.http.HttpStatus

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class HelloWorldControllerTests(@Autowired val restTemplate: TestRestTemplate) {

    @Test
    fun `should greet when hello api is invoked`() {
        val result = restTemplate.getForEntity<Map<String,Any>>("/hello")

        result.statusCode shouldBe HttpStatus.OK
        result.body?.get("greeting") shouldBe "Hello World !!!"
    }

}