package com.yorizip.myapp.Auth.service;

import com.yorizip.myapp.user.service.UserService;
import org.springframework.http.*;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Optional;

public abstract class AbstractOAuthService implements OAuthService {
    protected final UserService userService;
    protected final RestTemplate restTemplate;
    protected final HttpSession httpSession;

    public AbstractOAuthService(UserService userService, RestTemplate restTemplate, HttpSession httpSession) {
        this.userService = userService;
        this.restTemplate = restTemplate;
        this.httpSession = httpSession;
    }

    protected abstract String getTokenUrl();
    protected abstract String getUserInfoUrl();
    protected abstract MultiValueMap<String, String> getTokenRequestParameters(String code);
    protected abstract HttpHeaders getUserInfoHeaders(String accessToken);

    @Override
    public String getAccessToken(String code) {
        MultiValueMap<String, String> parameters = getTokenRequestParameters(code);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(parameters, headers);
        ResponseEntity<Map> response = restTemplate.postForEntity(getTokenUrl(), request, Map.class);

        Map<String, Object> responseBody = response.getBody();
        return (String) responseBody.get("access_token");
    }

    @Override
    public Map<String, Object> getUserInfo(String accessToken) {
        HttpHeaders headers = getUserInfoHeaders(accessToken);
        HttpEntity<String> request = new HttpEntity<>(headers);
        ResponseEntity<Map> response = restTemplate.exchange(getUserInfoUrl(), HttpMethod.GET, request, Map.class);

        return response.getBody();
    }

    @Override
    public Boolean handleUser(Map<String, Object> userInfo) {
        String email = (String) ((Map<String, Object>) userInfo.get("kakao_account")).get("email");
        return Optional.ofNullable(email)
                .map(userService::findUserByEmail)
                .map(user -> {
                    httpSession.setAttribute("user", user);
                    return true;
                })
                .orElse(false);
    }
}

