package com.yorizip.myapp.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AuthProviderMapper {
    @Insert("INSERT INTO auth_providers (provider_id, provider_name, provider_type) " +
            "VALUES (#{providerId}, #{providerName}, #{providerType})")
    void insertAuthProvider(AuthProviderVO authProvider);
}

