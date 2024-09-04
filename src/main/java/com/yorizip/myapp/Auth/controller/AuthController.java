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
        log.info("Received Kakao login request with code: {}", code);

        boolean isUserExists = authService.processLogin(code, "kakao");

        if (isUserExists) {
            log.info("User exists, redirecting to main page");
            return "redirect:/main/main.jsp";
        } else {
            log.info("User does not exist, redirecting to join page");
            return "redirect:/join/joinKakao.jsp";
        }
    }


    @GetMapping("/auth/naver")
    public String naverAuth() {
        return "redirect:" + authService.getNaverAuthUrl();
    }

    @GetMapping("/auth/login/naver")
    public String naverLogin(@RequestParam String code) {
        return authService.processLogin(code, "naver")
                ? "redirect:/main/main.jsp" // 가입된 회원이 존재할 경우
                : "redirect:/join/joinKakao.jsp"; // 가입된 회원이 없을 경우
    }
}
