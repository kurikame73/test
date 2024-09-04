package com.yorizip.myapp.Auth.service;

import com.yorizip.myapp.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthService {
    private final UserService userService;
    private final RestTemplate restTemplate;
    private final HttpSession httpSession;
    private final KakaoAuthService kakaoAuthService;
    private final NaverAuthService naverAuthService;

    public String getKakaoAuthUrl() {
        String clientId = "920865d3fcdbfd024c9e2f35b102beb6";
        String redirectUri = "http://localhost:8888/myapp/auth/login/kakao";

        return "https://kauth.kakao.com/oauth/authorize"
                + "?client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&response_type=code";
    }

    public String getNaverAuthUrl() {
        String clientId = "tsCjaf_Sguy3on43jxmt";
        String redirectUri = "http://localhost:8888/myapp/auth/login/naver";
        String state = "";

        return "https://nid.naver.com/oauth2.0/authorize"
                + "?response_type=code"
                + "&client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&state=" + state;
    }

    public Boolean processLogin(String code, String provider) {
        log.info("Starting login process for provider: {}", provider);

        OAuthService oauthService;
        if ("kakao".equalsIgnoreCase(provider)) {
            oauthService = kakaoAuthService;
        } else if ("naver".equalsIgnoreCase(provider)) {
            oauthService = naverAuthService;
        } else {
            log.error("Unsupported provider: {}", provider);
            throw new IllegalArgumentException("Unsupported provider: " + provider);
        }

        log.info("Getting access token from provider: {}", provider);
        String accessToken = oauthService.getAccessToken(code);
        log.info("Received access token: {}", accessToken);

        log.info("Fetching user info from provider: {}", provider);
        Map<String, Object> userInfo = oauthService.getUserInfo(accessToken);
        log.info("Received user info: {}", userInfo);

        boolean isUserHandled = oauthService.handleUser(userInfo, provider);
        log.info("User handling result: {}", isUserHandled);

        return isUserHandled;
    }
}
