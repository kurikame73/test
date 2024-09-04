package com.yorizip.myapp.user.service;

import com.yorizip.myapp.user.dto.request.UserRegisterRequestDto;
import com.yorizip.myapp.user.mapper.UserMapper;
import com.yorizip.myapp.user.vo.UserVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserMapper userMapper;
    private final HttpSession httpSession;

    public void registerUser(UserRegisterRequestDto userDto) {
        Map<String, Object> userInfo = (Map<String, Object>) httpSession.getAttribute("userInfo");

        // 카카오 authProviderID = 1
        if (userInfo.containsKey("properties")) {
            Map<String, Object> properties = (Map<String, Object>) userInfo.get("properties");
            userMapper.insertUser(
                    UserVO.createUser(userDto,
                            (String) properties.get("profile_image"),
                            1));
        }

        // 네이버 authProviderId = 2
        else if (userInfo.containsKey("response")) {
            Map<String, Object> response = (Map<String, Object>) userInfo.get("response");
            userMapper.insertUser(UserVO.createUser(
                    userDto,
                    (String) response.get("profile_image"),
                    2));
        }
    }
}
