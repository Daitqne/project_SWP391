package com.example.migrateproject.dal;

import com.example.migrateproject.model.TokenForgetPassword;

import java.time.LocalDateTime;

public interface ITokenForgetPassword {
    boolean insertTokenForgetPassword(TokenForgetPassword tokenForgetPassword);
}
