package com.yorizip.myapp.Auth.controller;

import com.yorizip.myapp.Auth.service.AuthService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
@Slf4j
public class AuthController {
    private final AuthService authService;

    @GetMapping("/auth/kakao")
    public String kakaoAuth() {
        return "redirect:" + authService.getKakaoAuthUrl();
    }

    @GetMapping("/auth/login/kakao")
    public String kakaoLogin(@RequestParam String code) {
        return authService.processKakaoLogin(code)
                ? "redirect:/main/main.jsp" // 가입된 회원이 존재
                : "redirect:/join/joinKakao.jsp"; // 하지 않을경우
    }
}
