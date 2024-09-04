package com.yorizip.myapp.user.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class UserRegisterRequestDto {
    private String userName;
    private String userId;
    private String password;
    private String passwordConfirm;
    private String nickname;
    private String userEmail;
    private String phone;
}
