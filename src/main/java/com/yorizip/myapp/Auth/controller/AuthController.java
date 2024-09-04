package com.yorizip.myapp.Auth.controller;

import com.yorizip.myapp.Auth.service.AuthService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
@Slf4j
public class AuthController {
    private final AuthService authService;

    @GetMapping("/auth/kakao")
    public String kakaoAuth() {
        return authService.getKakaoAuthUrl();
    }
}
