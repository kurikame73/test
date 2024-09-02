package com.yorizip.myapp.user.mapper;

import com.yorizip.myapp.user.vo.AuthProviderVO;
import com.yorizip.myapp.user.vo.SocialLoginVO;
import com.yorizip.myapp.user.vo.UserVO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {
    @Insert("INSERT INTO users (user_name, nickname, hashed_password, phone, user_email, auth_provider_id, profile_image) " +
            "VALUES (#{userName}, #{nickname}, #{hashedPassword}, #{phone}, #{userEmail}, #{authProviderID}, #{profileImgUrl})")
    @Options(useGeneratedKeys = true, keyProperty = "userId")
    void insertUser(UserVO user);


    @Select("SELECT user_name AS userName, nickname, hashed_password AS hashedPassword, phone, user_email AS userEmail, auth_provider_id AS authProviderID, profile_image AS profileImgUrl FROM users WHERE user_email = #{userEmail}")
    @ConstructorArgs({
            @Arg(column = "userName", javaType = String.class),
            @Arg(column = "nickname", javaType = String.class),
            @Arg(column = "hashedPassword", javaType = String.class),
            @Arg(column = "phone", javaType = String.class),
            @Arg(column = "userEmail", javaType = String.class),
            @Arg(column = "authProviderID", javaType = int.class),
            @Arg(column = "profileImgUrl", javaType = String.class)
    })
    UserVO getUserByEmail(String userEmail);

    @Select("SELECT user_name AS userName, nickname, hashed_password AS hashedPassword, phone, user_email AS userEmail FROM users WHERE user_email = #{userEmail}")
    @ConstructorArgs({
            @Arg(column = "userName", javaType = String.class),
            @Arg(column = "nickname", javaType = String.class),
            @Arg(column = "hashedPassword", javaType = String.class),
            @Arg(column = "phone", javaType = String.class),
            @Arg(column = "userEmail", javaType = String.class),
    })
    UserVO getUserByEmailLogin(String userEmail);


    @Select("SELECT * FROM users")
    List<UserVO> getAllUsers();

    @Insert("INSERT INTO social_logins (social_id, social_company, social_login_id, token, user_id) " +
            "VALUES (#{socialId}, #{socialCompany}, #{socialLoginId}, #{token}, #{userId})")
    void insertSocialLogin(SocialLoginVO socialLogin);

    @Insert("INSERT INTO auth_providers (provider_id, provider_name, provider_type) " +
            "VALUES (#{providerId}, #{providerName}, #{providerType})")
    void insertAuthProvider(AuthProviderVO authProvider);

    @Update("UPDATE users SET user_name = #{userName}, nickname = #{nickname}, hashed_password = #{hashedPassword}, profile_image = #{profileImgUrl} WHERE user_email = #{userEmail}")
    void updateUser(UserVO user);
}
