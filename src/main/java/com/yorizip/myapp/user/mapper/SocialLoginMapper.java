package com.yorizip.myapp.user.mapper;

import com.yorizip.myapp.user.vo.SocialLoginVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SocialLoginMapper {
    @Insert("INSERT INTO social_logins (social_id, social_company, social_login_id, token, user_id) " +
            "VALUES (#{socialId}, #{socialCompany}, #{socialLoginId}, #{token}, #{userId})")
    void insertSocialLogin(SocialLoginVO socialLogin);
}

