package com.yorizip.myapp.user.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.yorizip.myapp.user.dto.request.UserRegisterRequestDto;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserVO {
    private String userName;
    private String nickname;
    private String hashedPassword;
    private String phone;
    private String userEmail;
    private int authProviderID; // 인증 제공자 ID
    private String profileImgUrl;

    public static UserVO createUser(UserRegisterRequestDto dto,
                                    String profileImgUrl,
                                    Integer authProviderID) {
        return UserVO.builder()
                .userName(dto.getUserName())
                .nickname(dto.getNickname())
                .hashedPassword(dto.getPassword())
                .phone(dto.getPhone())
                .userEmail(dto.getUserEmail())
                .authProviderID(authProviderID)
                .profileImgUrl(profileImgUrl)
                .build();
    }
}

