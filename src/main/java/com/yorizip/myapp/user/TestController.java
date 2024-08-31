package com.yorizip.myapp.user;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @GetMapping("/test/controller")
    public ResponseEntity<String> test() {
            return ResponseEntity.ok("ㄴㅇㅇㄴ");
    }

    @GetMapping("/test")
    public ResponseEntity<String> teest() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(new MediaType("text", "plain", java.nio.charset.StandardCharsets.UTF_8));
        return ResponseEntity.ok().headers(headers).body("ㄴㅇㅇㄴ");
    }
}
