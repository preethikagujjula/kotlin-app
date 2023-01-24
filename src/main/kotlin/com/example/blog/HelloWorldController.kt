package com.example.blog


import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloWorldController {

    @GetMapping("/hello")
    fun hello(): Map<String, Any> {
        return mapOf("greeting" to "Hello World !!!")
    }

}