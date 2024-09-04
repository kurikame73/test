package com.yorizip.myapp.Auth.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthService {
    public String getKakaoAuthUrl() {
        String clientId = "920865d3fcdbfd024c9e2f35b102beb6";
        String redirectUri = "http://localhost:8888/myapp/auth/login/kakao";

        return "https://kauth.kakao.com/oauth/authorize"
                + "?client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&response_type=code";
    }
}
