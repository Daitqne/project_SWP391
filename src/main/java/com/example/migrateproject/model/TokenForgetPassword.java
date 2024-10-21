package com.example.migrateproject.model;

import java.time.LocalDateTime;

public class TokenForgetPassword {
    private int tokenId;
    private String token;
    private LocalDateTime expiryTime;
    private boolean isUser;
    private int user_id;


    public TokenForgetPassword( String token, LocalDateTime expiryTime, boolean isUser, int user_id) {
        this.token = token;
        this.expiryTime = expiryTime;
        this.isUser = isUser;
        this.user_id = user_id;
    }

    public int getTokenId() {
        return tokenId;
    }

    public void setTokenId(int tokenId) {
        this.tokenId = tokenId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public LocalDateTime getExpiryTime() {
        return expiryTime;
    }

    public void setExpiryTime(LocalDateTime expiryTime) {
        this.expiryTime = expiryTime;
    }

    public boolean isUser() {
        return isUser;
    }

    public void setUser(boolean user) {
        isUser = user;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
}
