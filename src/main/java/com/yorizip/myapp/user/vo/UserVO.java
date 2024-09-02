package com.yorizip.myapp.user.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class UserVO {
    private Long id;
    private int userId; // 사용자 ID
    private String userName;
    private String nickname;
    private String hashedPassword;
    private String phone;
    private String userEmail;
    private int authProviderID; // 인증 제공자 ID
    private String profileImgUrl;

    public UserVO(String userName, String nickname, String hashedPassword, String phone, String userEmail, int authProviderID) {
        this.userName = userName;
        this.nickname = nickname;
        this.hashedPassword = hashedPassword;
        this.phone = phone;
        this.userEmail = userEmail;
        this.authProviderID = authProviderID;
    }

    public UserVO(String userName, String nickname, String hashedPassword, String phone, String userEmail) {
        this.userName = userName;
        this.nickname = nickname;
        this.hashedPassword = hashedPassword;
        this.phone = phone;
        this.userEmail = userEmail;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    // 기본 생성자
    public UserVO() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    // 필드 생성자
    public UserVO(String userName, String nickname, String hashedPassword, String phone, String userEmail, int authProviderID, String profileImgUrl) {
        this.userName = userName;
        this.nickname = nickname;
        this.hashedPassword = hashedPassword;
        this.phone = phone;
        this.userEmail = userEmail;
        this.authProviderID = authProviderID;
        this.profileImgUrl = profileImgUrl;
    }


    // Getter와 Setter 메서드


    public int getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getHashedPassword() {
        return hashedPassword;
    }

    public void setHashedPassword(String hashedPassword) {
        this.hashedPassword = hashedPassword;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getAuthProviderID() {
        return authProviderID;
    }

    public void setAuthProviderID(int authProviderID) {
        this.authProviderID = authProviderID;
    }

    public String getProfileImgUrl() {
        return profileImgUrl;
    }

    public void setProfileImgUrl(String profileImgUrl) {
        this.profileImgUrl = profileImgUrl;
    }


    @Override
    public String toString() {
        return "UserVO{" +
                "userName='" + userName + '\'' +
                ", userNickname='" + nickname + '\'' +
                ", hashedPassword='" + hashedPassword + '\'' +
                ", userContact='" + phone + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", providerId=" + authProviderID +
                '}';
    }
}

