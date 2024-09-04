package com.yorizip.myapp.Auth.service;

import com.yorizip.myapp.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthService {
    private final UserService userService;
    private final RestTemplate restTemplate;

    public String getKakaoAuthUrl() {
        String clientId = "920865d3fcdbfd024c9e2f35b102beb6";
        String redirectUri = "http://localhost:8888/myapp/auth/login/kakao";

        return "https://kauth.kakao.com/oauth/authorize"
                + "?client_id=" + clientId
                + "&redirect_uri=" + redirectUri
                + "&response_type=code";
    }

    public String getKakaoAccessToken(String code) {
        String clientId = "920865d3fcdbfd024c9e2f35b102beb6";
        String redirectUri = "http://localhost:8888/myapp/auth/login/kakao";

        // 액세스 토큰 요청
        // TODO: record
        String tokenUrl = "https://kauth.kakao.com/oauth/token";
        MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
        parameters.add("grant_type", "authorization_code");
        parameters.add("client_id", clientId);
        parameters.add("redirect_uri", redirectUri);
        parameters.add("code", code);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(parameters, headers);

        ResponseEntity<Map> response = restTemplate.postForEntity(tokenUrl, request, Map.class);

        Map<String, Object> responseBody = response.getBody();
        return (String) responseBody.get("access_token");
    }

        public Map<String, Object> getKakaoUserInfo(String accessToken) {
        // 사용자 정보 요청
        String userInfoUrl = "https://kapi.kakao.com/v2/user/me";
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + accessToken);

        HttpEntity<String> request = new HttpEntity<>(headers);
        ResponseEntity<Map> response = restTemplate.exchange(userInfoUrl, HttpMethod.GET, request, Map.class);

        // TODO: record
        return response.getBody();
    }


    public Boolean handleKakaoUser(Map<String, Object> userInfo) {

        // 카카오 계정 정보 추출
        Map<String, Object> kakaoAccount = (Map<String, Object>) userInfo.get("kakao_account");
        String email = (String) kakaoAccount.get("email");
        String nickname = (String) ((Map<String, Object>) kakaoAccount.get("profile")).get("nickname");
        String profileImgUrl = (String) ((Map<String, Object>) kakaoAccount.get("profile")).get("profile_image_url");

        log.info("Kakao account details: {}", kakaoAccount);
        log.info("Nickname: {}", nickname);
        log.info("Email: {}", email);
        log.info("Profile image URL: {}", profileImgUrl);

        // 중복 이메일 체크
        return Optional.ofNullable(email)
                .map(userService::isEmailExists)
                .orElse(false);
    }


    // TODO: 추상화
    public Boolean processKakaoLogin(String code) {
        // 1. Access Token 가져오기
        String accessToken = getKakaoAccessToken(code);

        // 2. 사용자 정보 가져오기
        Map<String, Object> userInfo = getKakaoUserInfo(accessToken);

        // 3. 사용자 정보 처리
        return handleKakaoUser(userInfo);
    }
}
